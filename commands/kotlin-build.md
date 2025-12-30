---
name: kotlin-build
description: Build Kotlin projects for various targets and configurations
version: "1.0.0"
allowed-tools: [Bash, Read, Glob]
sasmp_version: "1.3.0"

arguments:
  positional:
    - name: module
      type: string
      required: false
      default: ""
      description: Specific module to build (empty for all)
  flags:
    - name: --release
      type: boolean
      default: false
      description: Build release variant
    - name: --target
      type: string
      values: [android, jvm, ios, js, native, all]
      default: all
      description: Target platform for KMP projects
    - name: --clean
      type: boolean
      default: false
      description: Clean before building
    - name: --parallel
      type: boolean
      default: true
      description: Enable parallel builds

exit_codes:
  0: Success - Build completed successfully
  1: Compilation error - Code failed to compile
  2: Configuration error - Gradle or project misconfigured
  3: Runtime error - Build system failure

validation:
  pre_conditions:
    - "Gradle wrapper exists (gradlew)"
    - "Valid build.gradle.kts or build.gradle"
  input_validation:
    module: "Must be valid module name if specified"
    target: "Must be one of: android, jvm, ios, js, native, all"
---

# Kotlin Build Command

Build Kotlin projects with optimized configurations for various targets.

## Synopsis

```
/kotlin-build [module] [--release] [--target <target>] [--clean] [--parallel]
```

## Description

Executes Gradle builds with Kotlin-optimized settings:
- Incremental compilation for faster builds
- Parallel execution for multi-module projects
- Target-specific builds for KMP projects
- Release optimizations (R8/ProGuard)

## Arguments

| Argument | Type | Default | Description |
|----------|------|---------|-------------|
| `module` | string | all | Specific module to build |
| `--release` | boolean | false | Release variant |
| `--target` | string | all | KMP target platform |
| `--clean` | boolean | false | Clean before build |
| `--parallel` | boolean | true | Parallel execution |

## Usage Examples

```bash
# Build entire project (debug)
/kotlin-build

# Build release variant
/kotlin-build --release

# Build specific module
/kotlin-build app

# Build for Android only (KMP)
/kotlin-build shared --target android

# Clean build for iOS
/kotlin-build --clean --target ios

# Build single module, release, no parallel
/kotlin-build core --release --parallel false
```

## Build Targets

| Target | Platform | Output |
|--------|----------|--------|
| `android` | Android | AAR/APK |
| `jvm` | JVM/Desktop | JAR |
| `ios` | iOS | Framework |
| `js` | Browser/Node | JS Bundle |
| `native` | Native | Binary |
| `all` | All configured | Mixed |

## Build Variants

### Debug Build
```bash
/kotlin-build
# Equivalent: ./gradlew assembleDebug
```
- No optimization
- Debug symbols included
- Fast compilation

### Release Build
```bash
/kotlin-build --release
# Equivalent: ./gradlew assembleRelease
```
- R8/ProGuard optimization
- Minification enabled
- Signing applied

## Exit Codes

| Code | Meaning | Action Required |
|------|---------|-----------------|
| 0 | Success | None |
| 1 | Compile error | Fix code errors |
| 2 | Config error | Check build.gradle.kts |
| 3 | Runtime error | Check Gradle daemon |

## Troubleshooting

| Issue | Cause | Resolution |
|-------|-------|------------|
| "Could not resolve" | Missing dependency | Check repositories block |
| "Kotlin version mismatch" | Inconsistent versions | Align kotlin versions in libs.versions.toml |
| "Out of memory" | Heap exhausted | Add `org.gradle.jvmargs=-Xmx4g` to gradle.properties |
| Build hangs | Daemon stuck | Run `./gradlew --stop` then rebuild |
| Slow incremental | Cache corruption | Run with `--clean` flag |

## Performance Tips

```properties
# gradle.properties
org.gradle.parallel=true
org.gradle.caching=true
org.gradle.configuration-cache=true
kotlin.incremental=true
kotlin.caching.enabled=true
```

## Integration

```yaml
# GitHub Actions
- name: Build
  run: ./gradlew build --no-daemon
  env:
    GRADLE_OPTS: "-Xmx4g"
```
