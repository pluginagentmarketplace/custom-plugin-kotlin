---
name: plugin-testing
description: Learn plugin testing strategies including unit tests, integration tests, validation, and quality metrics. Use when writing tests or ensuring plugin quality.
---

# Plugin Testing & Validation

## Quick Start

```kotlin
@Test
fun testAgentLoading() {
    val plugin = PluginManager()
    val agents = plugin.loadAgents()
    assertEquals(7, agents.size)
}

@Test
fun testCommandExecution() {
    val result = command.execute("--option value")
    assertTrue(result.success)
}
```

## Core Testing Areas

### Unit Tests
- Agent functionality
- Skill execution
- Command parsing
- Utility functions

### Integration Tests
- Agent-to-agent communication
- Hook triggering
- Skill composition
- Full workflows

### Validation Tests
- Plugin structure
- Manifest validity
- Content completeness
- Reference integrity

### Performance Tests
- Response time
- Memory usage
- Startup time
- Load testing

## Quality Metrics
✓ Code coverage >= 80%
✓ All tests passing
✓ No memory leaks
✓ Performance baselines met
✓ Security scans clear
