# /plugin-audit

Audit your plugin for best practices, validation, quality metrics, and marketplace readiness.

## Description

Comprehensive plugin validation including structure verification, content quality, performance metrics, security checks, and recommendations for improvement.

## Usage Examples

```
/plugin-audit                         # Full audit
/plugin-audit --path ./my-plugin      # Audit specific path
/plugin-audit --quick                 # Quick validation only
/plugin-audit --detailed              # Detailed analysis
/plugin-audit --fix                   # Auto-fix issues
/plugin-audit --report                # Generate report
```

## Audit Categories

### ✅ Structure Validation
- [ ] Plugin manifest exists and is valid JSON
- [ ] All referenced files exist
- [ ] Required directories present
- [ ] Proper folder hierarchy
- [ ] File naming conventions

### ✅ Content Quality
- [ ] YAML frontmatter is valid
- [ ] Descriptions complete and clear
- [ ] No placeholder content
- [ ] Examples are runnable
- [ ] Links are not broken

### ✅ Completeness Check
- [ ] All agents documented
- [ ] All skills have SKILL.md
- [ ] Commands are implemented
- [ ] Hooks are configured
- [ ] README is comprehensive

### ✅ Code Quality
- [ ] Consistent formatting
- [ ] No syntax errors
- [ ] Proper indentation
- [ ] Comment quality
- [ ] Naming conventions

### ✅ Performance Metrics
- [ ] Agent response < 500ms
- [ ] Command execution < 1s
- [ ] Memory usage acceptable
- [ ] No performance bottlenecks
- [ ] Startup time optimized

### ✅ Security Review
- [ ] No hardcoded secrets
- [ ] Input validation present
- [ ] Safe file operations
- [ ] Permission checks
- [ ] Error handling robust

### ✅ Testing Coverage
- [ ] Tests exist
- [ ] Coverage >= 80%
- [ ] All tests passing
- [ ] Integration tests present
- [ ] Edge cases covered

### ✅ Documentation
- [ ] README complete
- [ ] API documented
- [ ] Examples provided
- [ ] Troubleshooting guide
- [ ] Contributing guide

### ✅ Marketplace Readiness
- [ ] All requirements met
- [ ] No breaking changes
- [ ] Version updated
- [ ] Changelog written
- [ ] License included

## Audit Report

Results include:
```
📊 PLUGIN AUDIT REPORT
─────────────────────

✅ Structure:           PASS (21/21 checks)
✅ Content Quality:     PASS (15/15 checks)
⚠️  Performance:        WARN (2 issues found)
✅ Security:           PASS (10/10 checks)
⚠️  Testing:           WARN (Coverage: 75%, target: 80%)
✅ Documentation:      PASS (12/12 checks)
✅ Marketplace:        PASS (9/9 checks)

📈 Overall Score: 94/100 (A)

⚠️  Issues Found: 2
  1. Agent response time: 620ms (target: 500ms)
  2. Test coverage: 75% (target: 80%)

💡 Recommendations:
  1. Optimize agent caching
  2. Add 5 more unit tests
  3. Consider using connection pooling
```

## Auto-Fix Capabilities

```
/plugin-audit --fix

Fixed issues:
✅ Formatted YAML frontmatter
✅ Fixed broken links
✅ Added missing descriptions
✅ Standardized file structure
✅ Updated version numbers
```

## Performance Profiling

Detailed metrics:
```
Agent Performance:
├── Plugin Architect:        250ms
├── Kotlin Specialist:       180ms
├── Integration Expert:      420ms
├── Testing Engineer:        320ms
├── Performance Specialist:  290ms
├── Documentation Manager:   200ms
└── Advanced Features:       380ms

Average: 320ms ✅
```

## Security Findings

```
Security Audit Results:
✅ No hardcoded secrets
✅ Input validation present
✅ Safe file operations
⚠️  Consider HTTPS for external calls
✅ Error messages don't leak info
```

## Recommendations for Improvement

1. **Performance**: Implement agent caching
2. **Testing**: Increase coverage to 85%
3. **Documentation**: Add video tutorials
4. **Security**: Use secret management
5. **Features**: Consider MCP integration

## Publishing Checklist

Before marketplace submission:
- [ ] Audit score >= 90
- [ ] All tests passing
- [ ] Documentation complete
- [ ] No security issues
- [ ] Performance acceptable
- [ ] Version bumped
- [ ] Changelog updated

---

**Related Commands**: `/learn-plugin`, `/create-plugin`, `/publish-plugin`
