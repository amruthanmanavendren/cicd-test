# 🛒 E-Commerce CI/CD Pipeline with Docker & AWS

## 📌 Project Overview

This project demonstrates a complete **CI/CD (Continuous Integration & Continuous Deployment)** pipeline for a simple e-commerce website using modern DevOps tools.

Whenever code is pushed to GitHub, the pipeline:

* Builds a Docker image
* Scans for vulnerabilities
* Pushes the image to Docker Hub
* Deploys the application to AWS EC2 automatically

---

## 🚀 Tech Stack

* **Version Control:** Git & GitHub
* **CI/CD:** GitHub Actions
* **Containerization:** Docker
* **Security Scanning:** OWASP Dependency Check, Trivy
* **Cloud Platform:** AWS EC2
* **Web Server:** Nginx

---

## 🔄 CI/CD Pipeline Flow

```
Code Push (GitHub)
        ↓
GitHub Actions Trigger
        ↓
Checkout Code
        ↓
OWASP Dependency Scan
        ↓
Build Docker Image
        ↓
Trivy Image Scan
        ↓
DockerHub Login
        ↓
Push Image to DockerHub
        ↓
Deploy to AWS EC2 via SSH
        ↓
Run Container using Docker
```

---

## 📁 Project Structure

```
project/
│── index.html
│── Dockerfile
│── .github/
│   └── workflows/
│       └── pipeline.yml
```

---

## 🐳 Docker Setup

### Dockerfile

```dockerfile
FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/

RUN chmod -R 755 /usr/share/nginx/html
```

---

## ⚙️ GitHub Secrets

The following secrets are configured in GitHub:

* `DOCKER_USERNAME`
* `DOCKER_PASSWORD`
* `AWS_HOST`
* `AWS_USER`
* `AWS_SSH_KEY`

---

## ☁️ AWS EC2 Setup

* Instance Type: Ubuntu
* Open Ports:

  * 22 (SSH)
  * 80 (HTTP)

### Install Docker on EC2

```bash
sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
```

---

## 🌐 Deployment

After successful pipeline execution, the application is available at:

```
http://<EC2-PUBLIC-IP>
```

---

## 🔐 Security

* OWASP Dependency Check scans for vulnerable dependencies
* Trivy scans Docker images for security issues

---

## 🧠 Key Learnings

* CI/CD pipeline automation
* Docker image creation and deployment
* Secure application delivery
* AWS EC2 server management
* Debugging real-world DevOps issues

---

## 🎯 Conclusion

This project showcases an end-to-end DevOps workflow, integrating development, security, and deployment into an automated pipeline.

---

## 👩‍💻 Author

**Amrutha N Manavendren**
Backend Developer | Python Django

---

## ⭐ If you like this project

Give it a ⭐ on GitHub!
