---
name: kotlin-new
description: Scaffold new Kotlin projects, modules, and components
version: "1.0.0"
allowed-tools: [Read, Write, Bash, Glob]
sasmp_version: "1.3.0"

arguments:
  positional:
    - name: type
      type: string
      required: true
      values: [app, kmp, library, viewmodel, repository, usecase, composable]
      description: Type of component to create
    - name: name
      type: string
      required: true
      validation: "^[A-Z][a-zA-Z0-9]*$"
      description: Name for the new component (PascalCase)
  flags:
    - name: --package
      type: string
      default: "com.example"
      description: Base package name
    - name: --path
      type: string
      default: "."
      description: Output directory
    - name: --template
      type: string
      values: [minimal, full, clean-arch]
      default: minimal
      description: Template style to use

exit_codes:
  0: Success - Component created successfully
  1: Validation error - Invalid name or type
  2: Conflict error - Component already exists
  3: Runtime error - Failed to create files

validation:
  pre_conditions:
    - "Write permissions on target directory"
  input_validation:
    type: "Must be one of: app, kmp, library, viewmodel, repository, usecase, composable"
    name: "Must be PascalCase starting with uppercase letter"
    package: "Must be valid Java package name"
---

# Kotlin New Command

Scaffold new Kotlin projects, modules, and architectural components with best-practice templates.

## Synopsis

```
/kotlin-new <type> <name> [--package <package>] [--path <path>] [--template <template>]
```

## Description

Creates new Kotlin components with production-ready structure:
- **app**: Full Android application
- **kmp**: Kotlin Multiplatform shared module
- **library**: Reusable Kotlin library
- **viewmodel**: MVVM ViewModel with StateFlow
- **repository**: Data repository with Result pattern
- **usecase**: Clean Architecture use case
- **composable**: Jetpack Compose component

## Arguments

| Argument | Type | Required | Description |
|----------|------|----------|-------------|
| `type` | string | Yes | Component type to create |
| `name` | string | Yes | Component name (PascalCase) |
| `--package` | string | No | Base package (default: com.example) |
| `--path` | string | No | Output directory (default: .) |
| `--template` | string | No | Template style (default: minimal) |

## Usage Examples

```bash
# Create new Android app
/kotlin-new app MyApp --package com.company.myapp

# Create KMP shared module
/kotlin-new kmp SharedData --template clean-arch

# Create ViewModel
/kotlin-new viewmodel UserProfile

# Create repository with full template
/kotlin-new repository UserRepository --template full

# Create Compose component
/kotlin-new composable UserCard --path app/src/main/kotlin/ui
```

## Generated Structures

### App Template
```
MyApp/
├── app/
│   ├── src/main/kotlin/
│   │   └── com/example/myapp/
│   │       ├── MainActivity.kt
│   │       ├── MainApplication.kt
│   │       └── di/AppModule.kt
│   └── build.gradle.kts
├── gradle/
├── build.gradle.kts
└── settings.gradle.kts
```

### ViewModel Template
```kotlin
@HiltViewModel
class UserProfileViewModel @Inject constructor(
    private val repository: UserRepository
) : ViewModel() {
    private val _uiState = MutableStateFlow(UiState())
    val uiState = _uiState.asStateFlow()
}
```

### Repository Template
```kotlin
interface UserRepository {
    suspend fun getUser(id: String): Result<User>
    suspend fun saveUser(user: User): Result<Unit>
}

class UserRepositoryImpl @Inject constructor(
    private val api: UserApi,
    private val dao: UserDao
) : UserRepository { }
```

## Exit Codes

| Code | Meaning | Action Required |
|------|---------|-----------------|
| 0 | Created | None |
| 1 | Invalid input | Check type/name format |
| 2 | Already exists | Use different name or path |
| 3 | Write failed | Check permissions |

## Troubleshooting

| Issue | Cause | Resolution |
|-------|-------|------------|
| "Invalid name" | Non-PascalCase | Use format `UserProfile` not `userProfile` |
| "Already exists" | Name collision | Choose unique name or different path |
| "Permission denied" | No write access | Check directory permissions |
| "Unknown type" | Invalid type arg | Use one of: app, kmp, library, viewmodel, repository, usecase, composable |
