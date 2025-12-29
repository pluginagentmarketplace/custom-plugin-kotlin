---
name: publish-plugin
description: plugin
allowed-tools: Read
---

# /publish-plugin

Prepare and publish your plugin to the Claude Code marketplace for community access.

## Description

Complete plugin publication workflow including final validation, marketplace submission, and post-publication management.

## Usage Examples

```
/publish-plugin --check                    # Pre-publish checklist
/publish-plugin --submit                   # Submit to marketplace
/publish-plugin --preview                  # Preview marketplace listing
/publish-plugin --update-version 2.0.0     # Publish new version
/publish-plugin --changelog "Features: ..."  # Add release notes
```

## Pre-Publication Checklist

### Required Items
```
✅ plugin.json properly formatted
✅ All agents documented
✅ All skills have SKILL.md
✅ All commands implemented
✅ hooks.json configured
✅ README complete
✅ GETTING-STARTED.md present
✅ CHANGELOG.md present
✅ LICENSE file included
✅ All tests passing
✅ No broken links
✅ No hardcoded secrets
```

### Quality Gates
```
✅ Plugin audit score >= 90
✅ Test coverage >= 80%
✅ Performance metrics met
✅ Security review passed
✅ Documentation complete
✅ No critical issues
```

### Marketplace Requirements
```
✅ Unique plugin name
✅ Clear description (< 1024 chars)
✅ Relevant keywords (5-10)
✅ Valid repository URL
✅ Author information
✅ Clear version (semantic)
✅ License specified
✅ Professional presentation
```

## Submission Process

### Step 1: Final Validation
```bash
/publish-plugin --check

Results:
✅ Structure valid
✅ Content complete
✅ Tests passing
✅ Performance OK
✅ Ready for submission
```

### Step 2: Marketplace Listing
```bash
/publish-plugin --preview

Preview:
┌─────────────────────────────────┐
│  Custom Plugin Kotlin           │
├─────────────────────────────────┤
│                                 │
│ Master Kotlin-based custom      │
│ plugin development with         │
│ advanced techniques...          │
│                                 │
│ ⭐⭐⭐⭐⭐ (New)               │
│ 👥 0 Users                     │
│ 📥 0 Downloads                 │
│                                 │
│ [Learn More] [Install]         │
└─────────────────────────────────┘
```

### Step 3: Submit to Marketplace
```bash
/publish-plugin --submit

Submission Details:
├─ Repository: github.com/.../
├─ Branch: main
├─ Commit: a1b2c3d
├─ Package: custom-plugin-kotlin-1.0.0
└─ Status: Ready to submit

Submit? [Y/n] Y

Submission successful!
Reference ID: #PUB-2024-001
Review expected in 3-7 days
```

### Step 4: Community Discovery
```
Your plugin is now:
✅ Listed in marketplace
✅ Searchable by keywords
✅ Available for installation
✅ Featured in new releases
✅ Open for community feedback
```

## Publishing Versions

### First Release (1.0.0)
```bash
/publish-plugin --submit --version 1.0.0

Changelog:
- Initial plugin release
- 7 specialized agents
- Complete skill system
- 4 slash commands
- Marketplace-ready
```

### Minor Updates (1.1.0)
```bash
/publish-plugin --update-version 1.1.0

Changelog:
- New agent feature
- Performance improvements
- Bug fixes
- Documentation updates
```

### Major Updates (2.0.0)
```bash
/publish-plugin --update-version 2.0.0

Changelog:
- Breaking changes
- New architecture
- Complete rewrite
- Major feature additions
```

## Marketplace Listing

Your plugin page includes:
```
📌 Plugin Name & Version
📝 Full description
🔍 Keywords and categories
⭐ Community rating
👥 User count
📥 Download statistics
📅 Last updated
🔗 GitHub repository
📧 Author contact
📚 Documentation link
💬 Discussion forum
🐛 Issue tracker
```

## Post-Publication

### Community Engagement
```
✅ Monitor discussions
✅ Respond to issues quickly
✅ Release updates regularly
✅ Gather feedback
✅ Build community
✅ Consider contributions
```

### Metrics & Analytics
```
Dashboard shows:
- Daily/weekly/monthly users
- Installation count
- Usage patterns
- Popular features
- Issue statistics
- Review ratings
- Community engagement
```

### Update Strategy
```
Regular Updates:
├─ Bug fixes: Within 1 week
├─ Features: Monthly release
├─ Security: Immediate
├─ Documentation: As needed
└─ Major versions: Quarterly
```

## Success Metrics

### Adoption Goals
```
Month 1:  100+ installations
Month 3:  500+ downloads
Month 6:  1000+ users
Month 12: 5000+ community
```

### Quality Goals
```
Rating:         >= 4.5 stars
Response Time:  < 24 hours
Update Freq:    Monthly
Docs Quality:   Excellent
Test Coverage:  >= 85%
```

## Marketing Your Plugin

### Promotion Channels
- GitHub trending
- Product Hunt
- Twitter/X
- Dev.to
- Hacker News
- Discord communities
- Reddit r/programming

### Content Strategy
- Write blog post
- Create video tutorials
- Share examples
- Engage with community
- Answer questions
- Gather testimonials

## Support & Maintenance

### User Support
```
Support Channels:
├─ GitHub Discussions
├─ GitHub Issues
├─ Email support
├─ Discord community
└─ Documentation
```

### Long-term Maintenance
```
Ongoing:
✅ Security updates
✅ Dependency management
✅ Performance monitoring
✅ Community management
✅ Feature roadmap
✅ Regular releases
```

---

**Related Commands**: `/learn-plugin`, `/create-plugin`, `/plugin-audit`
