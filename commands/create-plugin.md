# /create-plugin

Initialize and scaffold a new plugin project with best practices, folder structure, and example files.

## Description

Generate a production-ready plugin scaffold with proper structure, manifest configuration, example agents, and starter templates.

## Usage Examples

```
/create-plugin --name my-plugin                      # Basic scaffold
/create-plugin --name my-plugin --agents 5           # With 5 agents
/create-plugin --name my-plugin --template advanced  # Advanced template
/create-plugin --name my-plugin --kotlin             # Kotlin-focused
/create-plugin --name my-plugin --path /home/dev     # Custom location
```

## Generated Structure

```
my-plugin/
├── .claude-plugin/
│   └── plugin.json ..................... Auto-generated
├── agents/
│   ├── 01-primary-expert.md
│   ├── 02-secondary-expert.md
│   └── ...
├── skills/
│   ├── primary-skill/SKILL.md
│   ├── secondary-skill/SKILL.md
│   └── ...
├── commands/
│   ├── main-command.md
│   └── secondary-command.md
├── hooks/
│   └── hooks.json ..................... Basic setup
├── scripts/
│   ├── setup.sh
│   └── validate.sh
├── README.md .......................... Template
├── GETTING-STARTED.md ................. Template
└── .gitignore
```

## Template Options

### Basic Template
- 1 agent
- 1 command
- Minimal structure
- Good for learning

### Standard Template
- 3 agents
- 3 commands
- Complete skills
- Production-ready

### Advanced Template
- 7 agents
- 6 commands
- Full hooks
- MCP server setup
- Enterprise features

## Configuration Options

### Language Choice
```
--kotlin              # Kotlin-based (recommended)
--java                # Java-based
--python              # Python-based
--typescript          # TypeScript-based
```

### Complexity Level
```
--simple              # Single agent
--moderate            # 3-4 agents
--complex             # 5-7 agents
--enterprise          # Full feature set
```

### Feature Selection
```
--with-testing        # Testing setup
--with-hooks          # Automation hooks
--with-mcp            # MCP server
--with-ci-cd          # GitHub Actions
--with-docs           # Full documentation
```

## Quick Start After Creation

```bash
cd my-plugin
./scripts/setup.sh        # Install dependencies
./scripts/validate.sh     # Check structure
/learn-plugin            # Start learning
```

## What's Included

✅ Pre-configured plugin.json
✅ Example agents with frontmatter
✅ SKILL.md templates
✅ Sample commands
✅ Hooks configuration
✅ Testing setup
✅ Documentation templates
✅ Git configuration

## Next Steps

1. Review generated structure
2. Customize agent names and descriptions
3. Implement your plugin logic
4. Add your skills and commands
5. Write tests
6. Run plugin audit
7. Publish to marketplace

---

**Related Commands**: `/learn-plugin`, `/plugin-audit`, `/publish-plugin`
