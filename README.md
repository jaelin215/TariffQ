# TariffQ

## Scalable Machine Learning Service (with Optuna, Airflow, Docker, and CI/CD)

This project demonstrates **ONE core capability**:
> I can build, optimize, test, and deploy production-ready ML services that are scalable, modular, cloud-native, and collaborative.

Built as a technical showcase for roles like **Senior Data Scientist / ML Engineer**. This repo integrates everything needed to move fast, ship weekly, and handle complexity.

---

### Problem This Project Solves
Real-world ML system fail when they lack:
- Reproducibility (unclear training/testing bounaries)
- Optimization (manual hyperparameter tuning or guesswork)
- Scalability (not containerized or cloud deployable)
- Team collaboration (no tests, no CI/CD, messy structure)

This repo fixes that. It's a blueprint for building and collaborating on real-world ML systems.

### Project Structure
- app/ - Logical sepearation of all core logic (i.e. models, routes, services, and config). Promotes modularity and ease of onboarding for other team members
- airflow/ - Embedded inside the app/. Realistic for small-to-mid ML projects that don't need a separate Airflow repo. Keeps retraining logic tightly coupled with the prediction logic, improving traceability.
- tests/ - Clean and organized. Unit tests per service/module file (i.e. test_predict.py, test_optuna.py). Easy plug-in for CI with pytest.
- github/workflows/ci.yml - Clean adn minimal. It shows DevOps maturity: CI/CD with GitHub Actions. Makes the project team- and cloud- ready.
- Dockerfile, .dockerignore, .gitignore - Full containerization, cloud-deployability, and local development efficiency.
- Makefile - Developer friendliness (make test, make buid, make run)
- pyproject.toml - Care about formatting, linting, and build config. Using modern Python tooling (black, isort, pytest, etc.) 


![image](https://github.com/user-attachments/assets/b6e98d1b-7e3a-4b97-a156-f73c446e4d6b)

