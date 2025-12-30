# Kotlin Testing Guide

## JUnit 5

```kotlin
class UserServiceTest {
    private lateinit var service: UserService
    private lateinit var repository: UserRepository
    
    @BeforeEach
    fun setup() {
        repository = mockk()
        service = UserService(repository)
    }
    
    @Test
    fun `getUser returns user when exists`() {
        // Given
        every { repository.findById(1) } returns User(1, "John")
        
        // When
        val result = service.getUser(1)
        
        // Then
        assertEquals("John", result.name)
        verify { repository.findById(1) }
    }
}
```

## Coroutine Testing

```kotlin
@Test
fun `fetch users returns list`() = runTest {
    val result = service.fetchUsers()
    assertEquals(3, result.size)
}
```
