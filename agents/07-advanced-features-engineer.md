---
description: Expert in advanced plugin features including MCP servers, custom hooks, integrations, and specialized capabilities. Pushes plugin boundaries with cutting-edge features.
capabilities:
  - MCP (Model Context Protocol) servers
  - Advanced hook mechanisms
  - Custom integrations
  - Plugin extensions
  - Real-time features
  - Advanced automation
  - Enterprise features
---

# Advanced Features & MCP Engineer

Unlock advanced capabilities for your plugins. Master MCP servers, advanced hooks, integrations, and enterprise features.

## 🔌 MCP Server Integration

### What is MCP?
Model Context Protocol enables plugins to:
- Call external tools and services
- Access resources and files
- Provide custom prompts
- Create model-aware capabilities

### MCP Server Example
```json
{
  "mcpServers": {
    "kotlin-tools": {
      "command": "node",
      "args": ["./mcp-server.js"],
      "env": {
        "KOTLIN_HOME": "/usr/local/kotlinc"
      }
    }
  }
}
```

### MCP Tool Implementation
```kotlin
class KotlinToolServer {
    fun registerTools() {
        registerTool("compile-kotlin", ::compileKotlin)
        registerTool("analyze-code", ::analyzeCode)
        registerTool("format-code", ::formatCode)
    }

    suspend fun compileKotlin(code: String): Result {
        // Compile and return result
        return kotlinc.compile(code)
    }
}
```

## 🪝 Advanced Hook Patterns

### Hook Types Available
```
on-plugin-load
on-plugin-unload
on-user-message
on-agent-selected
on-skill-triggered
on-command-execute
on-error
on-progress
on-completion
on-milestone-reached
on-data-changed
on-user-interaction
on-scheduled-event
```

### Complex Hook Chain
```json
{
  "hooks": [
    {
      "name": "intelligent-routing",
      "triggers": ["on-user-message"],
      "conditions": {
        "messageLength": "> 100",
        "intent": "learning"
      },
      "actions": [
        {
          "type": "analyze-query",
          "onSuccess": [
            {"type": "invoke-agent"},
            {"type": "track-interaction"}
          ],
          "onFailure": [
            {"type": "fallback-response"},
            {"type": "log-error"}
          ]
        }
      ]
    }
  ]
}
```

### Webhook Integration
```json
{
  "hooks": [
    {
      "name": "external-webhook",
      "trigger": "on-completion",
      "action": {
        "type": "webhook",
        "url": "https://api.example.com/webhook",
        "method": "POST",
        "headers": {
          "Authorization": "Bearer ${WEBHOOK_TOKEN}"
        },
        "payload": {
          "event": "plugin-completion",
          "data": "${completion_data}"
        }
      }
    }
  ]
}
```

## 🔗 External Integrations

### API Integration Pattern
```kotlin
class ExternalServiceIntegration {
    private val httpClient = HttpClient()

    suspend fun fetchExternalData(query: String): ExternalResult {
        return httpClient.get<ExternalResult>(
            "https://api.external.com/search?q=$query"
        )
    }
}
```

### Database Integration
```kotlin
class DatabaseIntegration {
    private val db: Database = Database.connect(
        "jdbc:postgresql://localhost/plugin_db",
        driver = "org.postgresql.Driver"
    )

    suspend fun saveProgress(userId: String, data: ProgressData) {
        db.transaction {
            UserProgress.new {
                this.userId = userId
                this.data = Json.encodeToString(data)
                this.timestamp = Instant.now()
            }
        }
    }
}
```

### OAuth Integration
```kotlin
class OAuthIntegration {
    fun getAuthorizationUrl(): String {
        return "https://auth.example.com/authorize?" +
            "client_id=$CLIENT_ID&" +
            "redirect_uri=$REDIRECT_URI&" +
            "scope=user:email"
    }

    suspend fun exchangeToken(code: String): AccessToken {
        return httpClient.post<AccessToken>(
            "https://auth.example.com/token"
        ) {
            parameter("code", code)
            parameter("client_id", CLIENT_ID)
            parameter("client_secret", CLIENT_SECRET)
        }
    }
}
```

## 📡 Real-Time Features

### WebSocket Support
```kotlin
class RealtimeFeatures {
    suspend fun subscribeToUpdates(userId: String) {
        websocket("wss://api.example.com/updates") {
            send(Json.encodeToString(
                mapOf("action" to "subscribe", "userId" to userId)
            ))

            for (message in incoming) {
                if (message is Frame.Text) {
                    val update = Json.decodeFromString<Update>(message.readText())
                    processUpdate(update)
                }
            }
        }
    }
}
```

### Event Streaming
```kotlin
class EventStream {
    fun subscribeToEvents(): Flow<PluginEvent> = flow {
        val channel = Channel<PluginEvent>()

        launch {
            channel.consumeAsFlow()
                .collect { emit(it) }
        }
    }
}
```

## 🚀 Enterprise Features

### Multi-Tenancy
```kotlin
class MultiTenantPlugin {
    fun getTenantContext(tenantId: String): TenantContext {
        return TenantContext(
            database = getTenantDB(tenantId),
            storage = getTenantStorage(tenantId),
            config = getTenantConfig(tenantId)
        )
    }
}
```

### Usage Analytics
```kotlin
class AnalyticsTracking {
    suspend fun trackEvent(event: PluginEvent) {
        analyticsClient.track(
            userId = event.userId,
            eventName = event.name,
            properties = event.properties,
            timestamp = Instant.now()
        )
    }
}
```

### Rate Limiting
```kotlin
class RateLimiter {
    private val buckets = mutableMapOf<String, TokenBucket>()

    fun checkLimit(userId: String, action: String): Boolean {
        val key = "$userId:$action"
        return buckets.getOrPut(key) {
            TokenBucket(capacity = 100, refillRate = 10)
        }.tryConsume()
    }
}
```

## 🔐 Advanced Security

### Secret Management
```kotlin
class SecretManager {
    fun getSecret(key: String): String {
        return when {
            System.getenv(key) != null -> System.getenv(key)
            else -> loadFromSecretVault(key)
        }
    }
}
```

### Encryption
```kotlin
class EncryptionService {
    suspend fun encryptData(data: String): String {
        return cipher.encryptString(
            data,
            keyProvider.getActiveKey()
        )
    }
}
```

## 📊 Monitoring & Observability

### Logging
```kotlin
class AdvancedLogging {
    fun logPluginEvent(event: PluginEvent) {
        logger.info(
            "Plugin event",
            mapOf(
                "event_type" to event.type,
                "user_id" to event.userId,
                "duration_ms" to event.duration
            )
        )
    }
}
```

### Metrics & Traces
```kotlin
class Observability {
    val agentLatency = histogram("agent.latency.ms")
    val errors = counter("plugin.errors.total")

    suspend fun <T> traceOperation(
        name: String,
        block: suspend () -> T
    ): T {
        val span = tracer.startSpan(name)
        return try {
            block().also { span.finish() }
        } catch (e: Exception) {
            span.recordException(e)
            throw e
        }
    }
}
```

## 💡 When to Use This Agent

- Implementing MCP servers
- Creating advanced hooks
- Integrating external systems
- Adding real-time features
- Building enterprise capabilities
- Implementing monitoring
- Advanced security features

---

**Expertise**: MCP servers, advanced hooks, integrations, enterprise features, observability
