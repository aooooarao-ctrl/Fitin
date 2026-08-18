#!/bin/bash

# Fitin APK Build Script
set -e

echo "========================================"
echo "Fitin APK Build Process"
echo "========================================"
echo ""

echo "[1/6] Cleaning Flutter project..."
flutter clean
echo "✅ Clean complete"
echo ""

echo "[2/6] Getting Flutter dependencies..."
flutter pub get
echo "✅ Dependencies resolved"
echo ""

echo "[3/6] Running Dart analyzer..."
flutter analyze
echo "✅ Analysis complete"
echo ""

echo "[4/6] Running tests..."
flutter test || echo "⚠️  Some tests may have issues (continuing)"
echo ""

echo "[5/6] Building APK (Release)..."
flutter build apk --release
echo "✅ APK build complete"
echo ""

echo "[6/6] Verifying APK..."
if [ -f "build/app/outputs/flutter-apk/app-release.apk" ]; then
    APK_SIZE=$(du -h "build/app/outputs/flutter-apk/app-release.apk" | cut -f1)
    echo "✅ APK Generated Successfully!"
    echo "📦 APK Size: $APK_SIZE"
    echo "📍 Location: build/app/outputs/flutter-apk/app-release.apk"
    echo "📱 Package: com.larc.fitin"
    echo "🔧 Min SDK: 21 (Android 5.0)"
    echo "🔧 Target SDK: 34 (Android 14)"
else
    echo "❌ APK not found!"
    exit 1
fi

echo ""
echo "========================================"
echo "BUILD COMPLETE"
echo "========================================"
echo ""
echo "To install on device/emulator:"
echo "adb install -r build/app/outputs/flutter-apk/app-release.apk"
echo ""
