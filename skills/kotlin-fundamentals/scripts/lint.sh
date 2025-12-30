#!/bin/bash
# Kotlin Lint Script
if ! command -v ktlint &> /dev/null; then
    echo "ktlint not found. Install with: brew install ktlint"
    exit 1
fi
ktlint --format "src/**/*.kt"
echo "✅ Kotlin linting complete"
