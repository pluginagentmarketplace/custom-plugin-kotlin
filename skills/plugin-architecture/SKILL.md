---
name: plugin-structure
description: Learn plugin architecture including folder structure, manifest configuration, agent design, skill organization, and best practices. Use when designing or restructuring plugins.
---

# Plugin Architecture & Structure

## Quick Start

Plugin structure overview:
```
my-plugin/
├── .claude-plugin/plugin.json    # Manifest
├── agents/                        # Agents
├── skills/                        # Skills
├── commands/                      # Commands
├── hooks/hooks.json              # Automation
└── README.md                     # Docs
```

## Core Components

### Plugin Manifest
- schemaVersion, name, version
- displayName, description
- author and repository info
- agents, commands, skills arrays
- keywords for discovery

### Agent Design
- Specialized expertise areas
- Clear YAML frontmatter
- Capability declarations
- Detailed descriptions

### Skill Organization
- One primary SKILL.md
- Category grouping
- Progressive complexity
- Supporting resources

### Commands
- Slash command definitions
- Usage documentation
- Examples and help

### Hooks
- Trigger-based automation
- Event handling
- Action workflows

## Best Practices
✓ Clear separation of concerns
✓ Meaningful naming
✓ Comprehensive documentation
✓ Proper YAML format
✓ Version management
