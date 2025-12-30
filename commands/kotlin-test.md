---
name: kotlin-test
description: Run Kotlin tests with coverage, filtering, and reporting
version: "1.0.0"
allowed-tools: [Bash, Read, Glob, Grep]
sasmp_version: "1.3.0"

arguments:
  positional:
    - name: filter
      type: string
      required: false
      default: ""
      description: Test class or method filter pattern
  flags:
    - name: --coverage
      type: boolean
      default: false
      description: Generate code coverage report
    - name: --watch
      type: boolean
      default: false
      description: Re-run tests on file changes
    - name: --parallel
      type: boolean
      default: true
      description: Run tests in parallel
    - name: --module
      type: string
      default: ""
      description: Specific module to test

exit_codes:
  0: Success - All tests passed
  1: Test failures - One or more tests failed
  2: Configuration error - Test setup failed
  3: Runtime error - Test framework failure

validation:
  pre_conditions:
    - "Test source directory exists"
    - "JUnit or kotest configured"
  input_validation:
    filter: "Valid test class or method pattern"
    module: "Must be valid module name if specified"
---

# Kotlin Test Command

Run Kotlin tests with comprehensive options for coverage, filtering, and continuous testing.

## Synopsis

```
/kotlin-test [filter] [--coverage] [--watch] [--parallel] [--module <module>]
```

## Description

Executes Kotlin tests using JUnit 5 Platform with support for:
- **JUnit 5**: Standard test execution
- **MockK**: Kotlin-native mocking
- **Kotest**: Property-based testing
- **Turbine**: Flow testing
- **Kover/JaCoCo**: Code coverage

## Arguments

| Argument | Type | Default | Description |
|----------|------|---------|-------------|
| `filter` | string | all | Test filter pattern |
| `--coverage` | boolean | false | Generate coverage |
| `--watch` | boolean | false | Continuous testing |
| `--parallel` | boolean | true | Parallel execution |
| `--module` | string | all | Specific module |

## Usage Examples

```bash
# Run all tests
/kotlin-test

# Run specific test class
/kotlin-test UserServiceTest

# Run single test method
/kotlin-test "UserServiceTest.should create user"

# Run with coverage report
/kotlin-test --coverage

# Run tests in watch mode
/kotlin-test --watch

# Run tests for specific module
/kotlin-test --module app

# Combine options
/kotlin-test UserServiceTest --coverage --module core
```

## Test Patterns

| Pattern | Matches |
|---------|---------|
| `UserServiceTest` | All tests in UserServiceTest class |
| `*Repository*` | All classes containing "Repository" |
| `UserServiceTest.should*` | Methods starting with "should" |
| `com.example.domain.*` | All tests in domain package |

## Coverage Report

```bash
/kotlin-test --coverage
```

Generates:
- HTML report: `build/reports/kover/html/index.html`
- XML report: `build/reports/kover/report.xml`

### Coverage Thresholds
```kotlin
// build.gradle.kts
kover {
    verify {
        rule {
            bound { minValue = 80 } // 80% minimum
        }
    }
}
```

## Exit Codes

| Code | Meaning | Action Required |
|------|---------|-----------------|
| 0 | All passed | None |
| 1 | Tests failed | Fix failing tests |
| 2 | Config error | Check test setup |
| 3 | Runtime error | Check test dependencies |

## Test Framework Examples

### JUnit 5 + MockK
```kotlin
@ExtendWith(MockKExtension::class)
class UserServiceTest {
    @MockK lateinit var repository: UserRepository
    @InjectMockKs lateinit var service: UserService

    @Test
    fun `should return user by id`() = runTest {
        coEvery { repository.findById(any()) } returns user
        val result = service.getUser("123")
        assertThat(result).isEqualTo(user)
    }
}
```

### Flow Testing with Turbine
```kotlin
@Test
fun `should emit loading then success`() = runTest {
    viewModel.uiState.test {
        assertThat(awaitItem().isLoading).isTrue()
        assertThat(awaitItem().data).isNotNull()
        cancelAndConsumeRemainingEvents()
    }
}
```

## Troubleshooting

| Issue | Cause | Resolution |
|-------|-------|------------|
| "No tests found" | Missing @Test annotation | Add JUnit 5 annotations |
| MockK "not initialized" | Missing extension | Add `@ExtendWith(MockKExtension::class)` |
| Coroutine test hangs | Missing runTest | Wrap test body in `runTest { }` |
| Flaky tests | Race conditions | Use `advanceUntilIdle()` in runTest |
| Low coverage | Untested branches | Check coverage report for gaps |

## Performance Tips

```properties
# gradle.properties
# Parallel test execution
kotlin.test.parallel.threads=4

# Fork per test class (isolation)
test.fork.every=1
```

## CI Integration

```yaml
# GitHub Actions
- name: Run Tests
  run: ./gradlew test koverXmlReport

- name: Upload Coverage
  uses: codecov/codecov-action@v3
  with:
    files: build/reports/kover/report.xml
```
