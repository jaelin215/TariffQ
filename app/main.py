from fastapi import FastAPI
from app.routes.predict import router as predict_router

app = FastAPI(title="ML Tariff Risk Predictor API")

@app.get("/")
def read_root():
    return {"message": "Welcome to the ML Tariff Risk Predictor API!"}


app.include_router(predict_router)