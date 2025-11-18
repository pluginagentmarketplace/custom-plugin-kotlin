---
name: architecture-patterns
description: Master software architecture, system design, design patterns, and SOLID principles. Create scalable, maintainable systems with proper architecture decisions.
---

# Software Architecture & Design Patterns Skill

## Quick Start

Good architecture enables systems to grow, change, and perform efficiently.

```python
# SOLID Principles Example - Strategy Pattern
from abc import ABC, abstractmethod

# Open/Closed Principle: Open for extension, closed for modification
class PaymentProcessor(ABC):
    @abstractmethod
    def process(self, amount: float) -> bool:
        pass

class CreditCardProcessor(PaymentProcessor):
    def process(self, amount: float) -> bool:
        print(f"Processing credit card: ${amount}")
        return True

class PayPalProcessor(PaymentProcessor):
    def process(self, amount: float) -> bool:
        print(f"Processing PayPal: ${amount}")
        return True

# Client code - depends on abstraction, not concrete implementation
def checkout(processor: PaymentProcessor, amount: float):
    return processor.process(amount)
```

## SOLID Principles

### Single Responsibility
- Each class has one reason to change
- Focused, testable code
- Better maintainability

### Open/Closed Principle
- Open for extension
- Closed for modification
- Use inheritance, composition, polymorphism

### Liskov Substitution
- Subtypes must be substitutable
- Consistent behavior contracts
- No surprising overrides

### Interface Segregation
- Specific interfaces over general ones
- Clients depend on what they use
- Smaller, focused interfaces

### Dependency Inversion
- Depend on abstractions
- High-level modules independent of low-level
- Easier to test and modify

## Design Patterns

### Creational Patterns
```python
# Singleton Pattern
class Database:
    _instance = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
        return cls._instance

# Factory Pattern
class LoggerFactory:
    @staticmethod
    def create_logger(log_type: str):
        if log_type == "file":
            return FileLogger()
        elif log_type == "console":
            return ConsoleLogger()
```

### Structural Patterns
```python
# Decorator Pattern
def cache_decorator(func):
    cache = {}
    def wrapper(*args):
        if args not in cache:
            cache[args] = func(*args)
        return cache[args]
    return wrapper

# Adapter Pattern
class LegacyPaymentAdapter:
    def __init__(self, legacy_system):
        self.legacy = legacy_system

    def process_payment(self, amount):
        return self.legacy.pay(amount)  # Adapt interface
```

### Behavioral Patterns
```python
# Observer Pattern
class Subject:
    def __init__(self):
        self._observers = []

    def attach(self, observer):
        self._observers.append(observer)

    def notify(self, event):
        for observer in self._observers:
            observer.update(event)

# Strategy Pattern
class SortStrategy:
    def sort(self, data):
        raise NotImplementedError

class QuickSort(SortStrategy):
    def sort(self, data):
        # Quick sort implementation
        pass
```

## Architectural Patterns

### Layered Architecture
```
Presentation Layer
    ↓
Business Logic Layer
    ↓
Persistence Layer
    ↓
Database
```

### Microservices Architecture
```
User Service
Order Service  → Message Queue → Notification Service
Product Service
    ↓
Database per service
```

### Event-Driven Architecture
```
Event Source → Event Bus → Event Handlers
    ↓
Event Store
```

## System Design Principles

### Scalability Strategies
- **Horizontal Scaling**: Add more servers
- **Vertical Scaling**: More powerful servers
- **Caching**: Store frequently used data
- **Database Optimization**: Indexes, sharding
- **Load Balancing**: Distribute traffic

### Reliability Patterns
- **Redundancy**: Multiple copies
- **Health Checks**: Monitor system
- **Circuit Breaker**: Prevent cascading failures
- **Retry Logic**: Handle temporary failures
- **Graceful Degradation**: Partial functionality

### Performance Optimization
```python
# Caching Strategy
from functools import lru_cache

@lru_cache(maxsize=128)
def expensive_computation(n):
    # Complex calculation
    return result

# Connection Pooling
from sqlalchemy import create_engine
engine = create_engine(
    'postgresql://user:pass@host/db',
    pool_size=10,
    max_overflow=20
)
```

## Distributed Systems

### CAP Theorem
- **Consistency**: All nodes see same data
- **Availability**: System always responsive
- **Partition Tolerance**: Works despite network failures
- *Choose 2 of 3*

### Consensus Algorithms
- Raft
- Paxos
- PBFT

### Eventual Consistency
- Accept temporary inconsistencies
- Synchronize later
- Better availability

## Resources

- [Design Patterns: Elements of Reusable OOP](https://refactoring.guru/design-patterns)
- [SOLID Principles](https://en.wikipedia.org/wiki/SOLID)
- [System Design Interview](https://roadmap.sh/system-design-interview)
- [Clean Code](https://www.oreilly.com/library/view/clean-code-a/9780136083238/)
