# Kotlin Multiplatform Guide

## Project Structure

```kotlin
// commonMain - Shared code
expect fun platformName(): String

// androidMain
actual fun platformName(): String = "Android"

// iosMain
actual fun platformName(): String = "iOS"
```

## Shared ViewModel

```kotlin
// commonMain
class SharedViewModel {
    private val _state = MutableStateFlow(State())
    val state: StateFlow<State> = _state.asStateFlow()
    
    fun updateState(newState: State) {
        _state.value = newState
    }
}
```
