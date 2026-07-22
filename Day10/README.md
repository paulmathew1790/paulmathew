# 📘 Day 10 - MLOps & Deployment

> **Date:** 19-Jul-2026

## 📌 Overview

Day 10 focused on **MLOps and Deployment** - taking a trained machine learning model and
turning it into a real, servable application. Topics covered how to package a model, build a
REST API around it, containerize the API with Docker, automate testing and builds with
CI/CD, track experiments with MLflow, and understand cloud deployment options, wrapping up
with tips for the **Final Project Presentation**.

Throughout this day, I learned how to serialize a trained model with `pickle`/`joblib`, wrap it
in a **FastAPI** REST API with `/health` and `/predict` endpoints, containerize the API with a
**Dockerfile**, write automated tests, and set up a **GitHub Actions** CI/CD workflow to run
those tests and build the Docker image automatically. I also logged a training run with
**MLflow** and reviewed how the containerized API would be deployed on **AWS** or **Azure**. I
applied these concepts by building a small **Deploy a Simple ML API** proof of concept.

---

## 🎯 Learning Objectives

- Understand Docker basics: images, containers, and Dockerfiles.
- Learn to build a REST API for a model using FastAPI.
- Learn how to serialize and load ML models with pickle/joblib.
- Understand GitHub Actions and general CI/CD concepts.
- Get an overview of MLflow for experiment tracking.
- Understand cloud deployment options on AWS and Azure.
- Learn how to structure a final project presentation.

---

# 📚 Topics Covered

## 🐳 Docker Basics

- Images vs containers
- Writing a `Dockerfile`
- Building and running a containerized API

## ⚡ FastAPI & REST API Creation

- Defining request/response schemas with Pydantic
- Building `/health` and `/predict` endpoints
- Testing an API with `TestClient`

## 💾 ML Model Serialization

- Saving models with `pickle`
- Saving models with `joblib`
- Loading a serialized model back for inference

## 🔁 GitHub Actions Overview & CI/CD Concepts

- Continuous Integration (CI): automated testing on every push
- Continuous Deployment/Delivery (CD): automated build/deploy
- Writing a GitHub Actions workflow YAML
- Writing automated tests with `pytest`

## 📊 MLflow Overview

- Tracking parameters, metrics, and model artifacts
- Local SQLite-backed tracking store
- Where MLflow fits into a training-to-deployment pipeline

## ☁️ Cloud Deployment Overview (AWS / Azure)

- AWS: ECS/Fargate, ECR, Elastic Beanstalk, SageMaker
- Azure: Container Apps, ACR, App Service, Azure ML endpoints
- The general flow: image -> registry -> managed container service

## 🎤 Final Project Presentation

- Structuring a presentation: problem, approach, results, deployment, demo, learnings

---

# 💻 Implementations

The repository includes beginner-to-intermediate implementations of:

- Training and serializing a Logistic Regression model (`pickle` and `joblib`)
- Logging a training run with MLflow (params, metrics, model artifact)
- A FastAPI app (`app.py`) with `/health` and `/predict` endpoints
- In-notebook API testing using FastAPI's `TestClient`
- A `Dockerfile` to containerize the API
- A `pytest` test suite (`test_app.py`) for the API
- A GitHub Actions CI/CD workflow (`.github/workflows/ci-cd.yml`) that runs tests and builds the Docker image
- **Deploy a Simple ML API** end-to-end proof of concept

---

# 📝 Assignment

Completed an **MLOps & Deployment Assignment** covering:

- Serializing a trained model with both pickle and joblib and verifying identical predictions
- Building a FastAPI endpoint that returns predictions for new input
- Writing a Dockerfile to containerize the API
- Writing a GitHub Actions workflow that tests and builds the project automatically
- Logging a training run with MLflow
- Describing how the API would be deployed to AWS or Azure

---

# 📚 Key Learnings

- Understood the role of Docker in packaging applications consistently across environments.
- Learned to serialize and reload ML models using pickle and joblib.
- Built a REST API for a model using FastAPI, with schema validation via Pydantic.
- Understood CI/CD concepts and wrote a working GitHub Actions workflow.
- Learned the basics of experiment tracking with MLflow.
- Reviewed cloud deployment paths for ML APIs on AWS and Azure.
- Learned how to structure a clear, demo-driven final project presentation.

---

# 📌 Deliverables

- ✅ Conceptual Notes PDF (Docker, FastAPI, Serialization, CI/CD, MLflow, Cloud Deployment)
- ✅ MLOps & Deployment Notebook (code + explanations)
- ✅ FastAPI App, Dockerfile, and pytest Test Suite
- ✅ GitHub Actions CI/CD Workflow
- ✅ Deploy a Simple ML API Proof of Concept
- ✅ Documentation
- ✅ GitHub Repository Update

---

# 🛠️ Technologies Used

- Python 3
- FastAPI & Uvicorn
- Pydantic
- scikit-learn, joblib, pickle
- MLflow
- Docker
- GitHub Actions
- pytest
- VS Code
- Git
- GitHub

---

---

# 🎯 Outcome

By the end of Day 10, I developed a solid, beginner-to-intermediate understanding of **MLOps
and Deployment**, including Docker, FastAPI, REST API creation, model serialization, CI/CD with
GitHub Actions, MLflow, and cloud deployment on AWS/Azure. I applied these concepts practically
by building and testing a Deploy a Simple ML API proof of concept, complete with a Dockerfile
and an automated CI/CD workflow. These skills complete the journey from training a model to
serving it as a real, production-style application.

---
