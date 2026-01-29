# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter mobile application (ababilxchat). The project is currently in early stages with a basic template structure. It targets multiple platforms: Android, iOS, Linux, macOS, and Web.

## Development Environment Setup

- **Language**: Dart 3.10.7+
- **Framework**: Flutter
- **Key Dependencies**: Flutter SDK, Cupertino Icons (^1.0.8), flutter_lints (^6.0.0)

Ensure Flutter SDK is installed and on your PATH. Verify with:
```bash
flutter doctor
```

## Common Commands

### Building & Running
- **Run the app**: `flutter run` (interactive selection of device/emulator)
- **Run on specific device**: `flutter run -d <device_id>`
- **Build release APK** (Android): `flutter build apk --release`
- **Build release bundle** (Android): `flutter build appbundle --release`
- **Build for iOS**: `flutter build ios --release`
- **Build for web**: `flutter build web`

### Code Quality
- **Static analysis**: `flutter analyze` (checks code against lints defined in analysis_options.yaml)
- **Format code**: `dart format lib/` (formats Dart files to standard style)
- **View outdated dependencies**: `flutter pub outdated`

### Testing
- **Run all tests**: `flutter test`
- **Run specific test file**: `flutter test test/widget_test.dart`
- **Watch mode** (auto-rerun on changes): `flutter test --watch`

### Dependencies
- **Get dependencies**: `flutter pub get`
- **Update dependencies**: `flutter pub upgrade`
- **View pub.dev package info**: `flutter pub info <package_name>`

### Clean Build
- **Clean build artifacts**: `flutter clean`
- **Full rebuild**: `flutter clean && flutter pub get && flutter run`

## Project Structure

```
lib/
  main.dart          # App entry point with MaterialApp setup

test/
  widget_test.dart   # Widget and integration tests

android/            # Android platform-specific code
ios/                # iOS platform-specific code
macos/              # macOS platform-specific code
linux/              # Linux platform-specific code
web/                # Web platform-specific code
```

## Code Style & Linting

The project uses:
- **flutter_lints** package for recommended Dart/Flutter linting rules
- Configuration in `analysis_options.yaml`
- Rules follow the standard Flutter best practices

Before committing, ensure:
1. Code passes analysis: `flutter analyze`
2. Code is formatted: `dart format lib/`

## Hot Reload vs Hot Restart

- **Hot Reload** (`r` in CLI or IDE button): Reloads code but preserves app state. Useful for UI changes.
- **Hot Restart** (`R` in CLI): Full app restart, resets state. Use when state management changes are made.

## Important Notes

- The app currently uses Material Design (`uses-material-design: true` in pubspec.yaml)
- The app is set to private (not published to pub.dev)
- Currently no custom assets or fonts configured
- Platform-specific code (Android/iOS/native) should be placed in respective platform directories
