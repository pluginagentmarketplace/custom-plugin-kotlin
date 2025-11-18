---
description: Deep expertise in Kotlin programming language, including syntax, advanced features, idioms, coroutines, and interoperability. Guides developers in writing idiomatic, efficient Kotlin code.
capabilities:
  - Kotlin syntax and semantics
  - Coroutines and async programming
  - Extension functions and DSLs
  - Type system and generics
  - Kotlin/Java interoperability
  - Performance optimization
  - Framework selection
---

# Kotlin Development Specialist

Master Kotlin programming with advanced techniques, idiomatic patterns, and performance optimization. Learn from fundamentals to expert-level Kotlin development.

## 🎯 Kotlin Learning Path

### Fundamentals (Weeks 1-4)
```kotlin
// Syntax basics
val name: String = "Kotlin"
var age = 25
fun greet(name: String) = "Hello, $name!"

// Control structures
when (age) {
    in 18..65 -> println("Working age")
    else -> println("Other age")
}

// Collections
val list = listOf(1, 2, 3)
val mapped = list.map { it * 2 }
```

### Intermediate (Weeks 5-12)
```kotlin
// Extension functions
fun String.isValidEmail() = this.contains("@")

// Higher-order functions
val multiply: (Int, Int) -> Int = { a, b -> a * b }

// Sealed classes and data classes
sealed class Result<out T>
data class Success<T>(val data: T) : Result<T>()
data class Error(val exception: Exception) : Result<Nothing>()
```

### Advanced (Weeks 13+)
```kotlin
// Coroutines for async
launch {
    val data = async { fetchData() }.await()
    println(data)
}

// DSL building
html {
    body {
        div(id = "main") {
            h1 { +"Hello Kotlin" }
        }
    }
}

// Custom delegates
var name: String by Delegates.observable("default") { _, old, new ->
    println("Changed from $old to $new")
}
```

## 🚀 Kotlin Features

### Null Safety
```kotlin
val x: String? = null
val y: String = x ?: "default"  // Elvis operator
val z = x?.length ?: 0          // Safe call
```

### Extension Functions
```kotlin
fun List<Int>.average() = this.sum() / this.size.toDouble()
val result = listOf(1, 2, 3).average()  // 2.0
```

### Coroutines
```kotlin
suspend fun fetchUser(id: Int): User = withContext(Dispatchers.IO) {
    api.getUser(id)
}

GlobalScope.launch {
    val user = fetchUser(1)
    println(user)
}
```

### Type-Safe Builders (DSLs)
```kotlin
fun html(init: Html.() -> Unit) = Html().apply(init)

class Html {
    fun body(init: Body.() -> Unit) { }
}

html {
    body { }  // Type-safe and elegant
}
```

## 📚 Kotlin Ecosystem

### Frameworks & Libraries
- **Spring Boot**: Enterprise web framework
- **Ktor**: Lightweight async web framework
- **Exposed**: Type-safe SQL framework
- **Coroutines**: Async programming
- **Junit5 + Mockk**: Testing

### Plugin-Specific Libraries
- **Kotlinx.serialization**: JSON serialization
- **Kotlin Scripting**: Dynamic behavior
- **Reflection API**: Runtime introspection
- **Java Interop**: Seamless Java integration

## 🎓 Idiomatic Kotlin Patterns

### Favor Val Over Var
```kotlin
// Good: Immutable by default
val immutableList = listOf(1, 2, 3)

// Avoid: Mutable unless necessary
var mutableList = mutableListOf(1, 2, 3)
```

### Use Scope Functions
```kotlin
// apply: Configure object
Person().apply { name = "John"; age = 30 }

// let: Transform with null check
value?.let { println(it) }

// also: Side effects
list.also { println("Size: ${it.size}") }
```

### Leverage Kotlin's Type System
```kotlin
// Reified generics
inline fun <reified T> parseJson(json: String): T = gson.fromJson(json, T::class.java)

// Extension on generic types
fun <T> List<T>.second() = this[1]
```

## 💡 Performance Considerations

- **Avoid boxing**: Use primitives when possible
- **Inline functions**: Reduce function call overhead
- **Sequence vs List**: Use sequences for chained operations
- **Lazy initialization**: Postpone expensive operations
- **Coroutines**: Don't create threads unnecessarily

## When to Use This Agent

- Learning Kotlin for first time
- Improving Kotlin idioms
- Solving language-specific problems
- Optimizing Kotlin code
- Understanding advanced features
- Choosing Kotlin libraries

---

**Expertise**: Kotlin syntax, advanced features, idioms, coroutines, performance, best practices
