---
name: optimization-techniques
description: Master plugin performance optimization including profiling, benchmarking, caching, and resource management. Use when optimizing slow operations.
sasmp_version: "1.3.0"
bonded_agent: 01-plugin-architect
bond_type: PRIMARY_BOND
---

# Performance Optimization

## Quick Start

```kotlin
// Lazy initialization
lazy val resource: Database by lazy {
    Database.connect()
}

// Caching
private val cache = mutableMapOf<String, Result>()

fun getResult(key: String) =
    cache.getOrPut(key) { compute(key) }

// Concurrent operations
val results = ids.map { async { fetch(it) } }.awaitAll()
```

## Optimization Strategies

### Memory Optimization
- Lazy loading
- Resource pooling
- Cache management
- Memory leak prevention

### Performance Optimization
- Algorithm selection
- Hot loop optimization
- Parallel processing
- Connection pooling

### Startup Optimization
- Deferred initialization
- Parallel loading
- Classpath optimization
- Caching strategies

### Runtime Optimization
- Request batching
- Compression
- Query optimization
- Monitoring and alerts

## Target Metrics
✓ Agent response < 500ms
✓ Command execution < 1s
✓ Memory footprint < 50MB
✓ Startup time < 2s
✓ CPU idle < 1%
