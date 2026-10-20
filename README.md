```text
Goal:
Set up a fresh Android project skeleton using Clean Architecture, Jetpack Compose, Hilt, Room, and Retrofit. The app only shows "Hello World". Do NOT add any extra features, sample screens, or sample code.

Project values:
- Base package: com.example.myapp   (replace with the real package)
- Application class: MyApplication
- Theme name: AppTheme

Process:
Before changing anything, inspect the project and list the files you will create, modify, and delete. Then proceed. If something blocks you (version incompatibility, unsupported compileSdk), STOP and tell me. Do not silently downgrade or work around it.

1. Package Structure
Create these as real, EMPTY directories under the base package. Do NOT put any file inside them: no code, no interfaces, no .gitkeep, no README. (I know Git will not track empty folders; that is fine.)

data/local, data/remote, data/mapper, data/repository
domain/model, domain/repository, domain/usecase
presentation/ui, presentation/viewmodel, presentation/state
di, utils

The ONLY non-empty locations allowed are:
- Base package root: MyApplication.kt
- presentation/ui/: MainActivity.kt
- presentation/ui/theme/: Color.kt, Type.kt, Theme.kt
Every other folder must stay empty.

2. Build & Version Catalog
- Kotlin DSL + gradle/libs.versions.toml. No hardcoded version strings in any build.gradle.kts.
- KSP only. Do NOT use kapt anywhere.
- compileSdk = 37, targetSdk = 37, minSdk = 24. Verify the chosen AGP supports compileSdk 37.
- Use the latest stable, mutually compatible versions of AGP, Kotlin, KSP (must match the Kotlin version), Compose BOM, Hilt, Room, Retrofit.
- If AGP 9+ with built-in Kotlin is used, do not apply org.jetbrains.kotlin.android separately.
- gradle.properties: add android.disallowKotlinSourceSets=false
- Plugins (in [plugins]): Android application, Kotlin Compose compiler plugin, KSP, Hilt.
- Dependencies (in [libraries]):
  - androidx.core:core-ktx, androidx.lifecycle:lifecycle-runtime-ktx
  - androidx.activity:activity-compose
  - Compose BOM + ui, ui-graphics, material3, ui-tooling-preview, ui-tooling (debug only)
  - androidx.navigation:navigation-compose
  - androidx.lifecycle:lifecycle-viewmodel-compose
  - com.google.dagger:hilt-android, androidx.hilt:hilt-navigation-compose, hilt-compiler via ksp()
  - androidx.room:room-runtime, room-ktx, room-compiler via ksp()
  - com.squareup.retrofit2:retrofit, converter-gson

3. Hilt & Manifest
- MyApplication in the base package root, annotated @HiltAndroidApp.
- Register it in AndroidManifest.xml via android:name=".MyApplication".
- MainActivity annotated @AndroidEntryPoint.
- Do not add INTERNET permission or any other extras.

4. UI & Theme
- In MainActivity.onCreate(), call enableEdgeToEdge() BEFORE setContent.
- Create AppTheme (Material 3) in presentation/ui/theme/.
- MainActivity: AppTheme { Scaffold { innerPadding -> Text("Hello World", Modifier.padding(innerPadding)) } }

5. Cleanup
Delete the default template files: Greeting composable, ExampleUnitTest, ExampleInstrumentedTest, and any old theme files in the original template package. No leftover imports or unused resources.

6. Definition of Done
- Pure Kotlin, Compose only, no XML layouts.
- ./gradlew assembleDebug succeeds with 0 errors.
- No kapt reference anywhere; no hardcoded versions in build.gradle.kts.
- Finally, print the final folder tree and list every file you created/changed/deleted.
```
