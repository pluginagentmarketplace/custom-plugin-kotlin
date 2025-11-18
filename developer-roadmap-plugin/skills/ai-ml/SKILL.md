---
name: ai-ml-frameworks
description: Master machine learning and AI frameworks including TensorFlow, PyTorch, scikit-learn, and LLMs. Build models, implement deep learning, work with data, and deploy ML systems.
---

# AI/ML & Data Frameworks Skill

## Quick Start

Machine learning transforms data into intelligent predictions and insights.

```python
# Scikit-learn - Simple ML
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

iris = load_iris()
X_train, X_test, y_train, y_test = train_test_split(
    iris.data, iris.target, test_size=0.2, random_state=42
)

model = RandomForestClassifier(n_estimators=100)
model.fit(X_train, y_train)
accuracy = model.score(X_test, y_test)
print(f"Accuracy: {accuracy:.2f}")
```

```python
# PyTorch - Deep Learning
import torch
import torch.nn as nn

class NeuralNet(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc1 = nn.Linear(784, 128)
        self.fc2 = nn.Linear(128, 10)
        self.relu = nn.ReLU()

    def forward(self, x):
        x = x.view(-1, 784)
        x = self.relu(self.fc1(x))
        x = self.fc2(x)
        return x

model = NeuralNet()
optimizer = torch.optim.Adam(model.parameters())
loss_fn = nn.CrossEntropyLoss()
```

## Machine Learning Fundamentals

### Supervised Learning
- **Regression**: Predicting continuous values
  - Linear Regression
  - Polynomial Regression
  - Support Vector Regression

- **Classification**: Predicting categories
  - Logistic Regression
  - Decision Trees
  - Random Forests
  - Support Vector Machines

### Unsupervised Learning
- **Clustering**: Grouping similar data
  - K-Means
  - Hierarchical Clustering
  - DBSCAN

- **Dimensionality Reduction**
  - Principal Component Analysis (PCA)
  - t-SNE
  - UMAP

### Model Evaluation
```python
from sklearn.metrics import (
    accuracy_score, precision_score, recall_score, f1_score,
    confusion_matrix, roc_auc_score
)

# Classification metrics
accuracy = accuracy_score(y_true, y_pred)
precision = precision_score(y_true, y_pred)
recall = recall_score(y_true, y_pred)
f1 = f1_score(y_true, y_pred)
```

## Deep Learning Frameworks

### TensorFlow & Keras
- High-level API (Keras)
- Production-ready (TF Serving)
- TensorFlow Lite (mobile)
- TensorFlow.js (browser)

### PyTorch
- Dynamic computational graphs
- Research-friendly
- Lightning for production
- TorchServe for deployment

## Advanced Topics

### Natural Language Processing
```python
from transformers import pipeline

# Sentiment analysis with transformers
classifier = pipeline("sentiment-analysis")
result = classifier("I love this product!")
# Output: [{'label': 'POSITIVE', 'score': 0.9998}]
```

### Computer Vision
- Image classification (ResNet, EfficientNet)
- Object detection (YOLO, Faster R-CNN)
- Segmentation (U-Net, Mask R-CNN)
- Face recognition (FaceNet, VGGFace)

### Generative Models
- Language models (GPT series)
- Diffusion models (Stable Diffusion)
- GANs (Generative Adversarial Networks)
- Transformers architecture

## Data Processing

### Data Manipulation
```python
import pandas as pd
import numpy as np

df = pd.read_csv('data.csv')
df['age_group'] = pd.cut(df['age'], bins=[0, 18, 65, 100])
df_cleaned = df.dropna()
df_normalized = (df - df.mean()) / df.std()
```

### Feature Engineering
- Scaling and normalization
- Encoding categorical variables
- Feature selection
- Handling imbalanced data

## Model Deployment

### MLOps Tools
- **MLflow**: Experiment tracking
- **Kubeflow**: ML on Kubernetes
- **Weights & Biases**: ML monitoring
- **DVC**: Data versioning

### Deployment Options
- REST API (Flask, FastAPI)
- Serverless (Lambda, Cloud Functions)
- Containerized (Docker + Kubernetes)
- Edge deployment (TensorFlow Lite)

## Resources

- [Scikit-learn Docs](https://scikit-learn.org/)
- [PyTorch Tutorials](https://pytorch.org/tutorials/)
- [TensorFlow Guide](https://www.tensorflow.org/guide)
- [Hugging Face Transformers](https://huggingface.co/transformers/)
- [Fast.ai Courses](https://www.fast.ai/)
