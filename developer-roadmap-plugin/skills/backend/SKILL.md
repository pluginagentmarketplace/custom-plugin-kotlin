---
name: backend-frameworks
description: Master backend frameworks and server-side development using Node.js, Python, Java, Go. Build scalable APIs, handle databases, implement authentication, and create robust microservices.
---

# Backend Frameworks Skill

## Quick Start

Backend development provides the server-side logic that powers applications.

```python
# FastAPI Backend Example
from fastapi import FastAPI, HTTPException
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.orm import Session, declarative_base

app = FastAPI()
DATABASE_URL = "postgresql://user:password@localhost/dbname"
engine = create_engine(DATABASE_URL)
Base = declarative_base()

class User(Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key=True)
    name = Column(String)
    email = Column(String, unique=True)

@app.post("/users/")
async def create_user(name: str, email: str, db: Session):
    user = User(name=name, email=email)
    db.add(user)
    db.commit()
    return user

@app.get("/users/{user_id}")
async def get_user(user_id: int, db: Session):
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404)
    return user
```

## Core Concepts

### Request/Response Cycle
- HTTP methods (GET, POST, PUT, DELETE)
- Status codes and error handling
- Headers and content negotiation
- RESTful API design principles

### Routing & Middleware
- URL routing and path parameters
- Request middleware pipeline
- Authentication middleware
- CORS and security headers

### Database Interaction
- ORM concepts (SQLAlchemy, Sequelize, GORM)
- Query optimization
- Connection pooling
- Transaction management

### Authentication & Authorization
- JWT tokens
- OAuth 2.0 flows
- Role-based access control (RBAC)
- Session management

## Framework Comparison

### Node.js/Express
- Fast and lightweight
- Rich npm ecosystem
- JavaScript across stack
- Great for real-time apps

### Python/Django
- "Batteries included" framework
- ORM and admin panel built-in
- Clean and readable syntax
- Good for rapid development

### Java/Spring Boot
- Enterprise-grade framework
- Comprehensive ecosystem
- Strong type safety
- Perfect for large systems

### Go/Gin
- High performance
- Concurrency model
- Cloud-native design
- Simple and maintainable

## Advanced Patterns

### API Design
```
GET    /api/v1/users           # List users
POST   /api/v1/users           # Create user
GET    /api/v1/users/:id       # Get user
PUT    /api/v1/users/:id       # Update user
DELETE /api/v1/users/:id       # Delete user
```

### Error Handling
- Structured error responses
- Logging and monitoring
- Graceful degradation
- Retry mechanisms

### Scalability Patterns
- Horizontal scaling
- Caching strategies (Redis)
- Database optimization
- Microservices architecture

## Testing Backend

```python
# Pytest Example
def test_create_user(client):
    response = client.post("/users/", json={
        "name": "John",
        "email": "john@example.com"
    })
    assert response.status_code == 201
    assert response.json()["id"] == 1
```

## Resources

- [REST API Best Practices](https://restfulapi.net/)
- [API Design Guide](https://swagger.io/resources/articles/best-practices-in-api-design/)
- [Database Optimization](https://use-the-index-luke.com/)
