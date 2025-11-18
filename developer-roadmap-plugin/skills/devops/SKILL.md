---
name: devops-tools
description: Master DevOps tools and practices including Docker, Kubernetes, CI/CD pipelines, Infrastructure as Code, monitoring, and cloud platforms (AWS, Azure, GCP).
---

# DevOps & Cloud Tools Skill

## Quick Start

DevOps automates infrastructure and deployment processes.

```dockerfile
# Dockerfile Example
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
```

```bash
# Build and run
docker build -t myapp:1.0.0 .
docker run -p 3000:3000 myapp:1.0.0
```

## Container Fundamentals

### Docker Essentials
- Image creation and management
- Container lifecycle
- Docker networking
- Volume management
- Docker Compose for multi-container apps

### Container Registries
- Docker Hub
- Amazon ECR
- Google Container Registry
- Private registry setup

## Kubernetes Mastery

### Core Concepts
```yaml
# Kubernetes Deployment
apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
spec:
  replicas: 3
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: myapp
        image: myapp:1.0.0
        ports:
        - containerPort: 3000
        resources:
          requests:
            memory: "256Mi"
            cpu: "250m"
          limits:
            memory: "512Mi"
            cpu: "500m"
```

### Key K8s Objects
- Pods (smallest unit)
- Services (networking)
- Deployments (replication)
- StatefulSets (stateful apps)
- ConfigMaps and Secrets
- Persistent Volumes

## Infrastructure as Code

### Terraform Example
```hcl
# AWS EC2 with Terraform
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "my-web-server"
  }
}

resource "aws_rds_instance" "db" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "13.7"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  skip_final_snapshot  = true
}
```

## CI/CD Pipelines

### GitHub Actions Example
```yaml
name: Build and Deploy

on:
  push:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Build Docker image
      run: docker build -t myapp:${{ github.sha }} .
    - name: Push to registry
      run: docker push myapp:${{ github.sha }}
    - name: Deploy to K8s
      run: kubectl set image deployment/myapp myapp=myapp:${{ github.sha }}
```

## Monitoring & Observability

### Prometheus & Grafana
- Metrics collection
- Alerting rules
- Custom dashboards
- Time-series database

### Log Aggregation
- ELK Stack (Elasticsearch, Logstash, Kibana)
- Splunk
- CloudWatch
- Datadog

## Cloud Platforms

### AWS Key Services
- EC2 (compute)
- S3 (storage)
- RDS (database)
- Lambda (serverless)
- ElastiCache (caching)

### Azure Services
- Virtual Machines
- App Service
- Cosmos DB
- Azure Functions

### Google Cloud
- Compute Engine
- Cloud Storage
- Cloud SQL
- Cloud Functions

## Security Best Practices

- Secrets management (Vault, AWS Secrets Manager)
- Network policies and firewalls
- RBAC implementation
- Image scanning
- Compliance automation

## Resources

- [Docker Documentation](https://docs.docker.com/)
- [Kubernetes Official](https://kubernetes.io/docs/)
- [Terraform Registry](https://registry.terraform.io/)
- [AWS Documentation](https://docs.aws.amazon.com/)
