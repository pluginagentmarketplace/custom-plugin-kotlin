# Jetpack Compose Guide

## Basic Composable

```kotlin
@Composable
fun Greeting(name: String, modifier: Modifier = Modifier) {
    Text(
        text = "Hello $name!",
        modifier = modifier.padding(16.dp)
    )
}

@Preview
@Composable
fun GreetingPreview() {
    Greeting("Android")
}
```

## State Management

```kotlin
@Composable
fun Counter() {
    var count by remember { mutableStateOf(0) }
    
    Column {
        Text("Count: $count")
        Button(onClick = { count++ }) {
            Text("Increment")
        }
    }
}
```

## ViewModel Integration

```kotlin
@Composable
fun UserScreen(viewModel: UserViewModel = viewModel()) {
    val users by viewModel.users.collectAsState()
    
    LazyColumn {
        items(users) { user ->
            UserCard(user)
        }
    }
}
```
