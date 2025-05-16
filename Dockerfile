# Base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1    # Do not create unnecessary .pyc files (i.e. __pycache__ folders)
ENV PYTHONUNBUFERED 1            # Print output/logs real-time in Docker containers. Useful for debugging.

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y gcc    # gcc is a C compiler reuqired to install some dependencies

# Copy dependency files
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy all project files
COPY . .

# Default command
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]      # app(folder).main(main.py):app(FastAPI instance; app=FastAPI())
                                                                            # --host 0.0.0.0 (Expose the app to all network interfaces. not just localhost)
                                                                            # uvicorn starts the FastAPI web app servier. It's a fast and lightweight ASGI server used to run FastAPI or other ASGI-based Python web apps.
