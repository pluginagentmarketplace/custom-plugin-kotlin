---
name: kotlin-check
description: Check Kotlin project for code quality issues and violations
version: "1.0.0"
allowed-tools: [Read, Bash, Grep, Glob]
sasmp_version: "1.3.0"

arguments:
  positional:
    - name: path
      type: string
      required: false
      default: "."
      description: Target directory or file to check
  flags:
    - name: --strict
      type: boolean
      default: false
      description: Enable strict mode (fail on warnings)
    - name: --fix
      type: boolean
      default: false
      description: Auto-fix issues where possible
    - name: --format
      type: string
      values: [plain, json, sarif]
      default: plain
      description: Output format for results

exit_codes:
  0: Success - No issues found
  1: Issues found - Violations detected
  2: Configuration error - Invalid config or missing tools
  3: Runtime error - Unexpected failure during check

validation:
  pre_conditions:
    - "Gradle wrapper or build.gradle.kts exists"
    - "ktlint or detekt configured in project"
  input_validation:
    path: "Must be valid file or directory path"
    format: "Must be one of: plain, json, sarif"
---

# Kotlin Check Command

Analyze Kotlin project for code quality issues, style violations, and potential bugs.

## Synopsis

```
/kotlin-check [path] [--strict] [--fix] [--format <format>]
```

## Description

Runs comprehensive code quality checks on Kotlin projects including:
- **ktlint**: Code style and formatting violations
- **detekt**: Static analysis for code smells
- **Deprecated API**: Usage of deprecated Kotlin/Java APIs
- **Null Safety**: Potential null pointer issues

## Arguments

| Argument | Type | Default | Description |
|----------|------|---------|-------------|
| `path` | string | `.` | Target directory or file |
| `--strict` | boolean | false | Fail on warnings |
| `--fix` | boolean | false | Auto-fix issues |
| `--format` | string | plain | Output format |

## Usage Examples

```bash
# Check entire project
/kotlin-check

# Check specific module with strict mode
/kotlin-check app/src/main --strict

# Auto-fix and output JSON
/kotlin-check --fix --format json

# Check single file
/kotlin-check src/main/kotlin/UserService.kt
```

## Checks Performed

| Check | Tool | Severity |
|-------|------|----------|
| Code formatting | ktlint | Warning |
| Naming conventions | ktlint | Warning |
| Code complexity | detekt | Error |
| Long methods | detekt | Warning |
| Deprecated usage | compiler | Warning |
| Null safety | compiler | Error |

## Exit Codes

| Code | Meaning | Action Required |
|------|---------|-----------------|
| 0 | No issues | None |
| 1 | Issues found | Review and fix violations |
| 2 | Config error | Check ktlint/detekt setup |
| 3 | Runtime error | Check logs for details |

## Troubleshooting

| Issue | Cause | Resolution |
|-------|-------|------------|
| "ktlint not found" | Missing dependency | Add `id("org.jlleitschuh.gradle.ktlint")` to plugins |
| "detekt not configured" | Missing config | Run `./gradlew detektGenerateConfig` |
| Slow execution | Large codebase | Use `path` argument to scope check |
| False positives | Strict rules | Configure `.editorconfig` or `detekt.yml` |

## Integration

Works with CI/CD pipelines:
```yaml
# GitHub Actions
- name: Kotlin Check
  run: ./gradlew ktlintCheck detekt
```
