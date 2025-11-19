---
name: kotlin-basics
description: Master Kotlin programming language fundamentals including syntax, null safety, extension functions, and idiomatic patterns. Use when learning Kotlin or solving language-specific problems.
---

# Kotlin Fundamentals

## Quick Start

```kotlin
// Variables and types
val immutable = "Kotlin"
var mutable = 25

// Functions
fun greet(name: String): String = "Hello, $name!"

// Classes and data classes
data class User(val name: String, val age: Int)

// Extension functions
fun String.isLongString() = this.length > 10

// Lambda expressions
val numbers = listOf(1, 2, 3)
val doubled = numbers.map { it * 2 }
```

## Core Concepts

### Null Safety
- Non-null by default
- Nullable types with `?`
- Safe call operator `?.`
- Elvis operator `?:`

### Collections
- Immutable by default
- `listOf`, `setOf`, `mapOf`
- Functional operations
- Sequences for lazy evaluation

### Higher-Order Functions
- Functions as parameters
- Return functions
- Scope functions (`let`, `apply`, `also`)
- Inline functions

### Coroutines
- Suspend functions
- Async/await patterns
- Flow for streams
- Channel for communication

## Best Practices
✓ Prefer val over var
✓ Use extension functions
✓ Leverage type inference
✓ Use scope functions appropriately
✓ Make use of data classes
