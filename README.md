<div align="center">

<!-- Animated Typing Banner -->
<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=28&duration=3000&pause=1000&color=2E9EF7&center=true&vCenter=true&multiline=true&repeat=true&width=600&height=100&lines=Kotlin+Assistant;7+Agents+%7C+7+Skills;Claude+Code+Plugin" alt="Kotlin Assistant" />

<br/>

<!-- Badge Row 1: Status Badges -->
[![Version](https://img.shields.io/badge/Version-1.0.0-blue?style=for-the-badge)](https://github.com/pluginagentmarketplace/custom-plugin-kotlin/releases)
[![License](https://img.shields.io/badge/License-Custom-yellow?style=for-the-badge)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Production-brightgreen?style=for-the-badge)](#)
[![SASMP](https://img.shields.io/badge/SASMP-v1.3.0-blueviolet?style=for-the-badge)](#)

<!-- Badge Row 2: Content Badges -->
[![Agents](https://img.shields.io/badge/Agents-7-orange?style=flat-square&logo=robot)](#-agents)
[![Skills](https://img.shields.io/badge/Skills-7-purple?style=flat-square&logo=lightning)](#-skills)
[![Commands](https://img.shields.io/badge/Commands-4-green?style=flat-square&logo=terminal)](#-commands)

<br/>

<!-- Quick CTA Row -->
[📦 **Install Now**](#-quick-start) · [🤖 **Explore Agents**](#-agents) · [📖 **Documentation**](#-documentation) · [⭐ **Star this repo**](https://github.com/pluginagentmarketplace/custom-plugin-kotlin)

---

### What is this?

> **Kotlin Assistant** is a Claude Code plugin with **7 agents** and **7 skills** for kotlin development.

</div>

---

## 📑 Table of Contents

<details>
<summary>Click to expand</summary>

- [Quick Start](#-quick-start)
- [Features](#-features)
- [Agents](#-agents)
- [Skills](#-skills)
- [Commands](#-commands)
- [Documentation](#-documentation)
- [Contributing](#-contributing)
- [License](#-license)

</details>

---

## 🚀 Quick Start

### Prerequisites

- Claude Code CLI v2.0.27+
- Active Claude subscription

### Installation (Choose One)

<details open>
<summary><strong>Option 1: From Marketplace (Recommended)</strong></summary>

```bash
# Step 1️⃣ Add the marketplace
/plugin add marketplace pluginagentmarketplace/custom-plugin-kotlin

# Step 2️⃣ Install the plugin
/plugin install kotlin-assistant@pluginagentmarketplace-kotlin

# Step 3️⃣ Restart Claude Code
# Close and reopen your terminal/IDE
```

</details>

<details>
<summary><strong>Option 2: Local Installation</strong></summary>

```bash
# Clone the repository
git clone https://github.com/pluginagentmarketplace/custom-plugin-kotlin.git
cd custom-plugin-kotlin

# Load locally
/plugin load .

# Restart Claude Code
```

</details>

### ✅ Verify Installation

After restart, you should see these agents:

```
kotlin-assistant:04-testing-quality-engineer
kotlin-assistant:06-documentation-community-manager
kotlin-assistant:05-performance-optimization-specialist
kotlin-assistant:02-kotlin-specialist
kotlin-assistant:03-claude-integration-expert
... and 2 more
```

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🤖 **7 Agents** | Specialized AI agents for kotlin tasks |
| 🛠️ **7 Skills** | Reusable capabilities with Golden Format |
| ⌨️ **4 Commands** | Quick slash commands |
| 🔄 **SASMP v1.3.0** | Full protocol compliance |

---

## 🤖 Agents

### 7 Specialized Agents

| # | Agent | Purpose |
|---|-------|---------|
| 1 | **04-testing-quality-engineer** | Expert in plugin testing, validation, quality assurance, and |
| 2 | **06-documentation-community-manager** | Expert in plugin documentation, community engagement, market |
| 3 | **05-performance-optimization-specialist** | Expert in plugin performance optimization, profiling, benchm |
| 4 | **02-kotlin-specialist** | Deep expertise in Kotlin programming language, including syn |
| 5 | **03-claude-integration-expert** | Expert in Claude Code plugin APIs, hooks system, commands, a |
| 6 | **01-plugin-architect** | Expert in Claude Code plugin architecture, design patterns,  |
| 7 | **07-advanced-features-engineer** | Expert in advanced plugin features including MCP servers, cu |

---

## 🛠️ Skills

### Available Skills

| Skill | Description | Invoke |
|-------|-------------|--------|
| `documentation` | Learn documentation best practices, README writing, API docu | `Skill("kotlin-assistant:documentation")` |
| `claude-integration` | Master Claude Code APIs including agents, commands, hooks, a | `Skill("kotlin-assistant:claude-integration")` |
| `kotlin-fundamentals` | Master Kotlin programming language fundamentals including sy | `Skill("kotlin-assistant:kotlin-fundamentals")` |
| `testing-quality` | Learn plugin testing strategies including unit tests, integr | `Skill("kotlin-assistant:testing-quality")` |
| `advanced-features` | Master advanced plugin features including MCP servers, advan | `Skill("kotlin-assistant:advanced-features")` |
| `performance` | Master plugin performance optimization including profiling,  | `Skill("kotlin-assistant:performance")` |
| `plugin-architecture` | Learn plugin architecture including folder structure, manife | `Skill("kotlin-assistant:plugin-architecture")` |

---

## ⌨️ Commands

| Command | Description |
|---------|-------------|
| `/publish-plugin` | plugin |
| `/learn-plugin` | plugin |
| `/plugin-audit` | audit |
| `/create-plugin` | plugin |

---

## 📚 Documentation

| Document | Description |
|----------|-------------|
| [CHANGELOG.md](CHANGELOG.md) | Version history |
| [CONTRIBUTING.md](CONTRIBUTING.md) | How to contribute |
| [LICENSE](LICENSE) | License information |

---

## 📁 Project Structure

<details>
<summary>Click to expand</summary>

```
custom-plugin-kotlin/
├── 📁 .claude-plugin/
│   ├── plugin.json
│   └── marketplace.json
├── 📁 agents/              # 7 agents
├── 📁 skills/              # 7 skills (Golden Format)
├── 📁 commands/            # 4 commands
├── 📁 hooks/
├── 📄 README.md
├── 📄 CHANGELOG.md
└── 📄 LICENSE
```

</details>

---

## 📅 Metadata

| Field | Value |
|-------|-------|
| **Version** | 1.0.0 |
| **Last Updated** | 2025-12-29 |
| **Status** | Production Ready |
| **SASMP** | v1.3.0 |
| **Agents** | 7 |
| **Skills** | 7 |
| **Commands** | 4 |

---

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md).

1. Fork the repository
2. Create your feature branch
3. Follow the Golden Format for new skills
4. Submit a pull request

---

## ⚠️ Security

> **Important:** This repository contains third-party code and dependencies.
>
> - ✅ Always review code before using in production
> - ✅ Check dependencies for known vulnerabilities
> - ✅ Follow security best practices
> - ✅ Report security issues privately via [Issues](../../issues)

---

## 📝 License

Copyright © 2025 **Dr. Umit Kacar** & **Muhsin Elcicek**

Custom License - See [LICENSE](LICENSE) for details.

---

## 👥 Contributors

<table>
<tr>
<td align="center">
<strong>Dr. Umit Kacar</strong><br/>
Senior AI Researcher & Engineer
</td>
<td align="center">
<strong>Muhsin Elcicek</strong><br/>
Senior Software Architect
</td>
</tr>
</table>

---

<div align="center">

**Made with ❤️ for the Claude Code Community**

[![GitHub](https://img.shields.io/badge/GitHub-pluginagentmarketplace-black?style=for-the-badge&logo=github)](https://github.com/pluginagentmarketplace)

</div>
