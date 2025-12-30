# Ktor Guide

## Server Setup

```kotlin
fun main() {
    embeddedServer(Netty, port = 8080) {
        install(ContentNegotiation) {
            json()
        }
        routing {
            get("/users") {
                call.respond(userService.getAll())
            }
        }
    }.start(wait = true)
}
```

## Client

```kotlin
val client = HttpClient(CIO) {
    install(ContentNegotiation) {
        json()
    }
}

suspend fun getUsers(): List<User> {
    return client.get("https://api.example.com/users").body()
}
```
