# Kotlin DI Guide

## Hilt

```kotlin
@HiltAndroidApp
class MyApplication : Application()

@AndroidEntryPoint
class MainActivity : ComponentActivity()

@Module
@InstallIn(SingletonComponent::class)
object AppModule {
    @Provides
    @Singleton
    fun provideDatabase(@ApplicationContext context: Context): AppDatabase {
        return Room.databaseBuilder(context, AppDatabase::class.java, "db").build()
    }
}
```

## Koin

```kotlin
val appModule = module {
    single { Database() }
    factory { UserRepository(get()) }
    viewModel { MainViewModel(get()) }
}

// Start Koin
startKoin {
    modules(appModule)
}

// Inject
val viewModel: MainViewModel by viewModel()
```
