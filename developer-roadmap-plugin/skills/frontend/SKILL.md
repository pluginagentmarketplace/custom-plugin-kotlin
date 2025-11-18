---
name: frontend-technologies
description: Master modern frontend technologies including React, Vue, Angular, Svelte, TypeScript, and web standards. Use when learning frontend frameworks, optimizing web performance, designing responsive interfaces, or building PWAs.
---

# Frontend Technologies Skill

## Quick Start

Modern frontend development requires mastery of multiple technologies working together.

```javascript
// React Component Example
import { useState, useEffect } from 'react';

function UserProfile({ userId }) {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchUser(userId).then(data => {
      setUser(data);
      setLoading(false);
    });
  }, [userId]);

  if (loading) return <div>Loading...</div>;
  return <div>{user.name}</div>;
}
```

## Core Concepts

### HTML5 & Semantics
- Semantic HTML elements (nav, article, section)
- Accessibility best practices (ARIA, screen readers)
- Web APIs (Fetch, Storage, Geolocation)

### CSS3 Modern Features
- CSS Grid and Flexbox layouts
- CSS Variables and custom properties
- CSS Transforms and animations
- Responsive design patterns

### JavaScript Essentials
- ES6+ features (classes, arrow functions, destructuring)
- Async/await and Promises
- DOM manipulation and events
- Module systems (ES modules)

### Framework Choices

#### React (Most Popular)
- Component-based architecture
- Hooks API (useState, useEffect, useContext)
- State management (Redux, Zustand, Jotai)
- Performance optimization techniques

#### Vue 3 (Developer Friendly)
- Composition API
- Template syntax and directives
- Reactivity system
- Ecosystem (Vuex, Pinia, Vue Router)

#### Angular (Enterprise)
- TypeScript-first framework
- Dependency injection
- RxJS observables
- Module system and decorators

#### Svelte (Compiler)
- Reactive programming
- Stores and animations
- Scoped CSS
- Smaller bundle sizes

## Best Practices

### Performance Optimization
- Code splitting and lazy loading
- Image optimization (WebP, AVIF)
- Bundle analysis tools
- Lighthouse metrics optimization

### Testing Strategy
- Unit tests (Jest, Vitest)
- Component testing (React Testing Library)
- E2E testing (Cypress, Playwright)
- Accessibility testing (axe, jest-axe)

### Development Workflow
- Build tools (Vite, Webpack, esbuild)
- Package managers (npm, yarn, pnpm)
- Version control (Git)
- CI/CD integration

## Resources

- [MDN Web Docs](https://developer.mozilla.org/)
- [React Documentation](https://react.dev/)
- [Vue Official Guide](https://vuejs.org/)
- [Web.dev Learning](https://web.dev/learn/)
