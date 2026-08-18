# Fitin Flutter Project - Complete Setup Guide

## Prerequisites

### Required Software
- Flutter SDK: 3.0.0 or higher
- Dart SDK: Included with Flutter
- Android SDK: API 21 minimum
- Java: JDK 11 or higher
- Gradle: 7.0 or higher

## Build Instructions

### Quick Build (Automated)
```bash
chmod +x BUILD_COMMANDS.sh
./BUILD_COMMANDS.sh
```

### Manual Build
```bash
flutter clean
flutter pub get
flutter analyze
flutter test
flutter build apk --release
```

## Installation

```bash
adb install -r build/app/outputs/flutter-apk/app-release.apk
adb shell am start -n com.larc.fitin/com.larc.fitin.MainActivity
```

## Configuration

### API Base URL
Edit `lib/config/app_config.dart`:
- Emulator: `http://10.0.2.2:8000`
- Device: `http://192.168.1.x:8000` (your server IP)

## APK Output
- Location: `build/app/outputs/flutter-apk/app-release.apk`
- Package: `com.larc.fitin`
- Version: `1.0.0+1`
- Min SDK: 21
- Target SDK: 34

## Features Implemented

✅ Recipe Search  
✅ Filter System (Multiple Filters)  
✅ Nutrition Profiles  
✅ Calorie Logging  
✅ Recommendations  
�� Favorites  
✅ Material Design 3  
✅ State Management (Provider)  
✅ API Integration (Dio)  
✅ Error Handling  
✅ Empty States  

## Troubleshooting

### Build fails
```bash
cd android
./gradlew clean
cd ..
flutter build apk --release
```

### Cannot connect to backend
- Emulator: Use `10.0.2.2` for localhost
- Device: Ensure device and server on same network
- Check firewall settings

## Next Steps

1. Run build script: `./BUILD_COMMANDS.sh`
2. Install APK: `adb install -r build/app/outputs/flutter-apk/app-release.apk`
3. Launch app: `adb shell am start -n com.larc.fitin/com.larc.fitin.MainActivity`
4. Test all features
5. Verify API connectivity

**Status**: ✅ Ready to Build
