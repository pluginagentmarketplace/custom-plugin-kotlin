# Changelog

All notable changes to the Kotlin Development Assistant plugin.

## [2.0.0] - 2025-12-29

### Added
- 8 specialized agents (was 7)
  - Added 08-kotlin-advanced for metaprogramming and DSLs
- 12 Golden Format skills (was 7)
  - kotlin-spring - Spring Boot with Kotlin
  - kotlin-serialization - Kotlinx Serialization
  - kotlin-dsl - Gradle Kotlin DSL
  - kotlin-flow - StateFlow/SharedFlow
  - kotlin-di - Hilt/Koin DI
- 4 proper commands
  - /kotlin-check - Project analysis
  - /kotlin-new - Scaffolding
  - /kotlin-build - Building
  - /kotlin-test - Testing
- Real content in all assets/, scripts/, references/
- SASMP v1.3.0 compliance

### Changed
- Updated plugin.json schema to 1.0.0
- Updated author to Dr. Umit Kacar & Muhsin Elcicek
- Removed generic plugin development commands

### Fixed
- Empty Golden Format directories now have real content
- All skills properly bonded to agents

## [1.0.0] - 2025-12-29

### Initial Release
- 7 Kotlin-specific agents
- 7 basic skills with empty Golden Format
- Generic plugin development commands
