# Kotlin DSL Guide

## Gradle Kotlin DSL

```kotlin
plugins {
    kotlin("jvm") version "1.9.22"
    kotlin("plugin.serialization") version "1.9.22"
}

dependencies {
    implementation(libs.kotlinx.coroutines)
    testImplementation(kotlin("test"))
}
```

## Custom DSL

```kotlin
class HtmlBuilder {
    private val elements = mutableListOf<String>()
    
    fun div(block: DivBuilder.() -> Unit) {
        elements += DivBuilder().apply(block).build()
    }
    
    fun build() = elements.joinToString("\n")
}

fun html(block: HtmlBuilder.() -> Unit): String {
    return HtmlBuilder().apply(block).build()
}

// Usage
val page = html {
    div {
        text("Hello World")
    }
}
```
