plugins {
    id("com.android.application")
    id("kotlin-android")
    // Flutter Gradle plugin must be applied after the Android/Kotlin plugins
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services") // Required for Firebase
}

android {
    namespace = "com.example.assesment2"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    defaultConfig {
        applicationId = "com.example.assesment2"
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation(platform("com.google.firebase:firebase-bom:33.16.0"))
    // Example Firebase dependencies (add the ones you actually use):
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-auth")
    implementation("com.google.firebase:firebase-database")
}
