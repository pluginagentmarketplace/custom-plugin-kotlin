---
name: claude-apis
description: Master Claude Code APIs including agents, commands, hooks, and integrations. Use when implementing plugin features or integrating with Claude Code.
---

# Claude Code APIs & Integration

## Quick Start

```json
{
  "agents": [
    {
      "id": "expert-id",
      "name": "Expert Name",
      "file": "agents/expert.md"
    }
  ],
  "commands": [
    {
      "name": "command-name",
      "description": "What command does"
    }
  ],
  "hooks": [
    {
      "trigger": "on-event",
      "actions": [...]
    }
  ]
}
```

## Core APIs

### Agent System
- Agent definition and loading
- Capability declarations
- Automatic routing
- Context passing

### Command System
- Command registration
- Argument parsing
- Help documentation
- Execution flow

### Hook System
- 13+ trigger types
- Action workflows
- Conditional execution
- Error handling

### Skill System
- Skill registration
- Trigger conditions
- Resource management
- Loading strategies

## Integration Patterns
✓ Smart agent routing
✓ Command composition
✓ Hook chaining
✓ Context management
✓ Error recovery
