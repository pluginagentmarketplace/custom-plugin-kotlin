# Kotlinx Serialization Guide

## Basic Usage

```kotlin
@Serializable
data class User(
    val id: Long,
    val name: String,
    @SerialName("email_address")
    val email: String
)

// Serialize
val json = Json.encodeToString(user)

// Deserialize
val user = Json.decodeFromString<User>(json)
```

## Custom Configuration

```kotlin
val json = Json {
    prettyPrint = true
    ignoreUnknownKeys = true
    coerceInputValues = true
}
```
