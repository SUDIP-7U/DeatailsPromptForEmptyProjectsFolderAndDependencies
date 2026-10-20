Goal:
Set up a fresh Android project skeleton using Clean Architecture, Jetpack Compose, Hilt, Room, and Retrofit. The app only needs to show "Hello World" for now. Do not add any extra features, sample screens, or sample code.

Base package: <com.example.yourprojectname>

1. Package Structure
Create the following package hierarchy as EMPTY folders. Do NOT add any code, placeholder files, interfaces, or classes inside them:

<base_package>/
├── data/
│   ├── local/
│   ├── remote/
│   ├── mapper/
│   └── repository/
├── domain/
│   ├── model/
│   ├── repository/
│   └── usecase/
├── presentation/
│   ├── ui/
│   ├── viewmodel/
│   └── state/
├── di/
└── utils/

1. Build & Version Catalog Setup
- Use Kotlin DSL (build.gradle.kts) and Version Catalog (gradle/libs.versions.toml). No hardcoded version strings in build.gradle.kts.
- Use KSP only (do NOT use kapt).
- Set compileSdk = 37, targetSdk = 37, minSdk = 24.
- In gradle.properties, add `android.disallowKotlinSourceSets=false` for AGP KSP compatibility.
- Dependencies to configure in libs.versions.toml and app/build.gradle.kts:
    - Compose BOM + Material 3 + UI + Preview + Tooling
    - Navigation Compose (androidx.navigation:navigation-compose)
    - Lifecycle ViewModel Compose (androidx.lifecycle:lifecycle-viewmodel-compose)
    - Hilt Android + Hilt Navigation Compose + Hilt Compiler via KSP (com.google.dagger:hilt-android & hilt-compiler)
    - Room Runtime + Room KTX + Room Compiler via KSP (androidx.room:room-runtime, room-ktx, room-compiler)
    - Retrofit + Gson Converter (com.squareup.retrofit2:retrofit & converter-gson)
1. Hilt & Manifest Setup
- Create an Application class in the base package root annotated with @HiltAndroidApp.
- Register the Application class in AndroidManifest.xml (android:name="<base_package>.<AppName>").
- Annotate MainActivity with @AndroidEntryPoint.
1. UI & Theme
- In MainActivity, call enableEdgeToEdge() in onCreate() before setContent.
- Create an OpenSourceTheme / AppTheme (Material 3) under ui/theme/.
- Use Scaffold with Text("Hello World") in MainActivity, applying innerPadding to respect window insets.
1. Constraints & Definition of Done
- Pure Kotlin, Compose only (no XML layouts).
- All clean architecture sub-packages must remain empty folders.
- Clean up any default sample files from old packages.
- ./gradlew assembleDebug must succeed with 0 errors.
