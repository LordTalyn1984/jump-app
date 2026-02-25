🚀 Jump-App: High-Velocity CI/CD Deployment
A minimal, production-ready Python web server containerized with Docker and deployed to Azure Container Apps via GitHub Actions.

🛠 Project Overview
This project demonstrates a full-cycle DevOps workflow:

Application: Python/Flask web server using gunicorn for production-grade WSGI.

Containerization: Dockerized environment for environment parity.

Registry: Azure Container Registry (ACR) for secure image management.

Infrastructure: Azure Container Apps (Serverless) for scalable, cost-effective hosting.

CI/CD: GitHub Actions automated pipeline for "Push-to-Deploy" functionality.

🤖 The Workflow (AI-Augmented Engineering)
This project was built using an AI-pair programming model (Gemini).

The "We" Mentality: By treating AI as a collaborative partner, I was able to rapidly troubleshoot Azure-specific provisioning locks and subscription-tier limitations in real-time.

Tool Choice: Gemini was utilized for its superior handling of complex Azure CLI syntax and multi-step infrastructure workflows, allowing for a 1:1 parity between local development and cloud deployment.

🚀 Deployment Commands
To reproduce the infrastructure setup, the following "Paving" commands were used:

PowerShell
# 1. Create the environment
az containerapp env create --name jump-web-server-env --resource-group JumpAssessment-RG

# 2. Provision the landing pad
az containerapp create --name jump-web-server --resource-group JumpAssessment-RG --environment jump-web-server-env --image mcr.microsoft.com/azuredocs/containerapps-helloworld:latest --target-port 8080 --ingress external

# 3. Enable Registry Access for GitHub Actions
az acr update --name jumpgavinreg --admin-enabled true
📈 The Result
The CI/CD pipeline ensures that any change to app.py is automatically:

Built into a new Docker image.

Pushed to the Private Registry.

Rolled out to the live URL without manual intervention.
