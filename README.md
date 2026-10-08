# Yum Quick 🍔⚡

<p align="center">
  <img src="assets/launch_welcome/icons/welcome_screen_logo.svg" alt="Yum Quick Logo" width="120" />
</p>

<p align="center">
  <strong>A Modern, Fast, and Elegant Food Delivery & Ordering Mobile Application built with Flutter.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Clean%20Architecture-4CAF50?style=for-the-badge" alt="Clean Architecture" />
  <img src="https://img.shields.io/badge/State%20Management-Bloc%20%2F%20Cubit-blueviolet?style=for-the-badge" alt="Bloc" />
  <img src="https://img.shields.io/badge/Routing-Go%20Router-orange?style=for-the-badge" alt="GoRouter" />
</p>

---

## 📖 Overview

**Yum Quick** is a high-performance, cross-platform mobile application crafted to deliver an intuitive and delightful food ordering experience. Built adhering strictly to **Clean Architecture** and SOLID design principles, the application provides a modular, maintainable, and testable codebase ready for production scale.

---

## ✨ Features

- **🚀 Interactive Onboarding Flow**: Smooth, animated walkthrough introducing key features (Fast Delivery, Easy Payment, Favorite Food) powered by `flutter_animate` and vector SVGs.
- **🎨 Modern Design System**:
  - Custom brand color palette and adaptive theme tokens.
  - Bespoke typography using the **League Spartan** font family across multiple weights (Thin to Black).
- **🧭 Curved Navigation Bar**: Seamless bottom navigation transitions using `curved_navigation_bar` with custom active/inactive states.
- **⚡ Reactive State Management**: Efficient, predictable state handling powered by `flutter_bloc` / Cubit and `equatable`.
- **🔌 Service Locator & DI**: Loose coupling achieved through `get_it` dependency injection.
- **🛣️ Declarative Deep Routing**: Robust URL-friendly routing and screen transitions powered by `go_router`.
- **📱 Cross-Platform Ready**: Targeted and optimized for Android, iOS, Web, and Desktop.

---

## 🏗️ Architecture

The codebase follows the **Clean Architecture** pattern, enforcing strict separation of concerns across layers:

```
yum_quick/
├── assets/                  # Vectors, SVGs, and brand illustrations
├── fonts/                   # League Spartan font assets
└── lib/
    ├── core/                # Shared utilities, themes, routing, and widgets
    │   ├── router/          # GoRouter configuration and route definitions
    │   ├── theme/           # App colors and ThemeData configuration
    │   └── widgets/         # Reusable atomic UI components (CustomButton, etc.)
    ├── features/            # Feature-driven modules
    │   ├── splash_screen/   # Animated brand splash screen
    │   ├── launch_welcome/  # Landing and welcome screens
    │   ├── on_boarding/     # Onboarding carousel, domain logic, and cubits
    │   │   ├── data/        # Repositories implementation and data sources
    │   │   ├── domain/      # Entities, repositories interfaces, and usecases
    │   │   └── presentation/# Cubit state management and UI screens
    │   ├── navigation_bar/  # Bottom navigation bar feature module
    │   └── authentication/  # User authentication domain and flows
    ├── injection_container.dart # GetIt dependency injection setup
    └── main.dart            # Application entrypoint
```

---

## 🛠️ Tech Stack & Dependencies

| Category | Technology / Package |
|---|---|
| **Framework** | Flutter (SDK ^3.7.2+) |
| **Language** | Dart |
| **State Management** | `flutter_bloc` (v9.1+), `equatable` |
| **Navigation** | `go_router` (v16.2+) |
| **Dependency Injection** | `get_it` (v8.2+) |
| **Animations & UI** | `flutter_animate`, `flutter_svg`, `curved_navigation_bar` |
| **Icons** | `cupertino_icons` |

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version `>= 3.7.2`)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio / Xcode / VS Code with Flutter extension
- An emulator or physical test device

### Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/floskam300-eng/yum_quick.git
   cd yum_quick
   ```

2. **Install Flutter packages:**
   ```bash
   flutter pub get
   ```

3. **Run the application:**
   ```bash
   flutter run
   ```

---

## 👤 Author

- **Omar Shamy** - [GitHub Profile](https://github.com/floskam300-eng)
