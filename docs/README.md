# BabyBridge Mobile Wrapper

## Project Overview

This project is a Flutter-based mobile application that acts as a WebView wrapper for the existing BabyBridge web application. The primary goal is to provide a native mobile experience for users, with added features such as a native splash screen, offline handling, and platform-specific navigation.

## Technologies Used

- **Flutter:** The core framework for building the mobile application.
- **Dart:** The programming language used for Flutter development.
- **WebView Flutter:** A Flutter plugin for displaying web content in a WebView.
- **Lottie:** A library for adding high-quality animations.
- **Flutter Native Splash:** A package for creating native splash screens.
- **Connectivity Plus:** A plugin for checking network connectivity.

## Getting Started

### Prerequisites

- Flutter SDK
- An editor such as VS Code or Android Studio
- An Android or iOS device or emulator

### Installation

1.  **Clone the repository:**
    ```bash
    git clone <repository-url>
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd mybabybridge_mobileapp_project
    ```
3.  **Get dependencies:**
    ```bash
    flutter pub get
    ```

### Running the Application

To run the application, connect a device or start an emulator, and then execute the following command:

```bash
flutter run
```

## Project Structure

- `lib/`: Contains the main Dart code for the application.
  - `main.dart`: The entry point of the application.
  - `splash_screen.dart`: Implements the splash screen with a Lottie animation.
  - `webview_screen.dart`: Manages the WebView and its interactions.
  - `offline_screen.dart`: A screen to display when the user is offline.
  - `platform_navigation.dart`: Handles platform-specific navigation logic.
- `assets/`: Contains static assets like images and animations.
- `android/`: Contains Android-specific project files.
- `ios/`: Contains iOS-specific project files.
- `docs/`: Contains project documentation. 