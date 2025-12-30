# Kotlin Coroutines Guide

## Basic Coroutine

```kotlin
suspend fun fetchUser(id: Long): User {
    return withContext(Dispatchers.IO) {
        api.getUser(id)
    }
}

// Launching
viewModelScope.launch {
    val user = fetchUser(1)
    updateUI(user)
}
```

## Flow

```kotlin
fun observeUsers(): Flow<List<User>> = flow {
    while (true) {
        emit(repository.getUsers())
        delay(5000)
    }
}.flowOn(Dispatchers.IO)

// Collecting
lifecycleScope.launch {
    observeUsers().collect { users ->
        adapter.submitList(users)
    }
}
```

## Exception Handling

```kotlin
val handler = CoroutineExceptionHandler { _, exception ->
    Log.e("Coroutine", "Error: ${exception.message}")
}

scope.launch(handler) {
    // Coroutine code
}
```
