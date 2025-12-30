# Kotlin Fundamentals Guide

## Null Safety

```kotlin
// Nullable types
var name: String? = null

// Safe call
val length = name?.length

// Elvis operator
val len = name?.length ?: 0

// Not-null assertion (avoid!)
val len = name!!.length
```

## Data Classes

```kotlin
data class User(
    val id: Long,
    val name: String,
    val email: String
)

// Auto-generated: equals(), hashCode(), toString(), copy()
val user = User(1, "John", "john@example.com")
val copy = user.copy(name = "Jane")
```

## Extension Functions

```kotlin
fun String.addExclamation(): String = "$this!"

val message = "Hello".addExclamation() // "Hello!"
```
