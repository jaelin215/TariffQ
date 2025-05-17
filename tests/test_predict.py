from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_prediction():
    response = client.post("/predict", json={"feature1": 1, "feature2": 2})
    assert response.status_code == 200
    assert response.json()["prediction"] == 2