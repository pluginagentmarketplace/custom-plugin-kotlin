---
name: programming-languages
description: Master programming language fundamentals, syntax, paradigms, and ecosystem. Learn JavaScript, Python, Java, Go, Rust, C++, C#, and more. Use for language learning, polyglot development, and language-specific best practices.
---

# Programming Languages Skill

## Quick Start

Each language has unique strengths and design philosophies.

```python
# Python - Readable and expressive
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

# List comprehension
squares = [x**2 for x in range(10) if x % 2 == 0]
```

```go
// Go - Simple and concurrent
func fibonacci(n int) int {
    if n <= 1 {
        return n
    }
    return fibonacci(n-1) + fibonacci(n-2)
}

// Goroutines for concurrency
go func() {
    fmt.Println("Concurrent execution")
}()
```

```rust
// Rust - Memory safe without garbage collection
fn fibonacci(n: u32) -> u32 {
    match n {
        0 | 1 => n,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}
```

## Language Paradigms

### Imperative Languages
- Procedural (C, Pascal)
- Object-Oriented (Java, C++, C#)
- Commands that change state

### Declarative Languages
- Functional (Haskell, Lisp, Clojure)
- Query languages (SQL)
- Describe what you want, not how

### Multi-Paradigm Languages
- Python (OOP + Functional)
- JavaScript (Functional + OOP)
- Rust (Systems + Functional)

## Common Language Features

### Variables and Types
```javascript
// JavaScript - Dynamic typing
let x = 5;           // Number
let y = "hello";     // String
let z = { a: 1 };    // Object
```

```java
// Java - Static typing
int x = 5;                    // Primitive type
String y = "hello";           // Wrapper type
MyClass z = new MyClass();    // Object
```

### Functions & Methods
```python
# Python - First-class functions
def greet(name):
    return f"Hello, {name}!"

# Higher-order function
def apply_twice(func, value):
    return func(func(value))
```

### Error Handling
```go
// Go - Explicit error handling
file, err := os.Open("file.txt")
if err != nil {
    log.Fatal(err)
}
defer file.Close()
```

## Language Characteristics

### JavaScript/TypeScript
- **Paradigm**: Multi-paradigm
- **Typing**: Dynamic (TypeScript: Static)
- **Best for**: Web (frontend/backend), Node.js
- **Package Manager**: npm, yarn, pnpm
- **Speed**: Fast execution, JIT compiled

### Python
- **Paradigm**: Multi-paradigm
- **Typing**: Dynamic (Type hints available)
- **Best for**: Data science, AI, automation, web
- **Package Manager**: pip, conda
- **Speed**: Slower, interpreted

### Java
- **Paradigm**: Object-Oriented
- **Typing**: Static
- **Best for**: Enterprise, large systems
- **Package Manager**: Maven, Gradle
- **Speed**: JIT compiled, very fast

### Go
- **Paradigm**: Imperative
- **Typing**: Static
- **Best for**: Cloud, microservices, CLI
- **Package Manager**: go get
- **Speed**: Compiled, very fast

### Rust
- **Paradigm**: Multi-paradigm
- **Typing**: Static, strong
- **Best for**: Systems, performance-critical
- **Package Manager**: Cargo
- **Speed**: Compiled, extremely fast

## Best Practices

### Code Style
- Consistent formatting
- Meaningful variable names
- DRY (Don't Repeat Yourself)
- SOLID principles

### Testing
- Unit tests (test individual functions)
- Integration tests (test modules together)
- End-to-end tests (test complete workflows)
- Test coverage measurement

### Performance
- Algorithm selection
- Data structure choice
- Memory management
- Profiling and optimization

## Resources

- [Python Docs](https://docs.python.org/3/)
- [JavaScript MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/)
- [Go Official](https://golang.org/)
- [Rust Book](https://doc.rust-lang.org/book/)
- [Java Tutorials](https://docs.oracle.com/javase/tutorial/)
