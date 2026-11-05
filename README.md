# 🎙️ Mahatacast

> **Post, discover, and listen to your favorite podcasts — anywhere, anytime.**

A bilingual, cross-platform podcast application built with Flutter. Mahatacast gives listeners a personalized way to discover, stream, download, and discuss podcasts, while giving creators the tools to launch a channel, record or upload episodes, and publish to the world.

![Flutter](https://img.shields.io/badge/Flutter-3.19%2B-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.3%2B-0175C2?logo=dart&logoColor=white)
![BLoC](https://img.shields.io/badge/State%20Management-BLoC-4A90E2)
![Firebase](https://img.shields.io/badge/Firebase-FCM%20%7C%20Cloud%20Messaging-FFCA28?logo=firebase&logoColor=black)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-3DDC84?logo=android&logoColor=white)
![Status](https://img.shields.io/badge/Status-In%20Development-orange)

---

## 📖 Table of Contents

- [About the Project](#-about-the-project)
- [UI & Screenshots](#-ui--screenshots)
- [Key Features](#-key-features)
- [Architecture & Tech Stack](#-architecture--tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Configuration](#-configuration)
- [Troubleshooting](#-troubleshooting)

---

## 🚀 About the Project

**Mahatacast** is a full-featured podcast platform for mobile. It is designed around two complementary experiences:

- **For listeners:** a personalized home feed based on selected interests, an explore page for trending and top-rated shows, live search, a full audio player, favorites, listening history, offline downloads, channel subscriptions, comments, and ratings.
- **For creators:** a complete publishing pipeline — create a channel, record audio directly in the app or upload an existing file, add a title, category, and tags, then publish to listeners.

The app supports **English and Arabic** with full RTL support, includes a guest/visitor mode, and uses **Firebase Cloud Messaging** for push notifications.

### Why Mahatacast?

- **Interest-first discovery** — users choose the topics they care about during onboarding and get a tailored home feed.
- **One app, two roles** — the same account can listen, follow channels, and publish its own podcast channel.
- **Offline listening** — episodes can be downloaded and played later without a connection.
- **Creator-friendly** — no external recording studio required; record and publish from the phone.
- **Bilingual by design** — every screen and message is localized for English and Arabic.

---

## 🖼️ UI & Screenshots

The interface follows a warm, editorial visual language: a cream background (`#FDFBF7`), black primary actions, soft purple accents (`#BFB5FF`), rounded cards, custom iconography, and generous spacing. The layout is responsive via a 360 × 800 design baseline.

### ✨ Splash & Onboarding

| Splash | Intro |
| :---: | :---: |
| ![Splash screen](docs/screens/intro/splash_screen.png) | ![Intro screen](docs/screens/intro/intro_screen.png) |
| Animated glowing logo while the app restores the session, language, and onboarding state. | Lottie-powered welcome screen with the value proposition, guest access, and sign-up entry point. |

### 🔐 Authentication & Personalization

| Login | Register | Interest Selection |
| :---: | :---: | :---: |
| ![Login screen](docs/screens/auth/login_screen.png) | ![Register screen](docs/screens/auth/register_screen.png) | ![Interest selection screen](docs/screens/auth/interest_selection_screen.png) |
| Email/password login with validation, password visibility toggle, and contextual help dialogs. | Account creation with full name, email, password, and confirmation validation. | Tappable topic chips that seed the user's personalized home feed. |

### 🏠 Home, Details & Playback

| Home | Podcast Details — Episodes | Podcast Details — Details |
| :---: | :---: | :---: |
| ![Home screen](docs/screens/home/home_screen.png) | ![Podcast details episodes](docs/screens/home/podcast_details_episodes_screen.png) | ![Podcast details details](docs/screens/home/podcast_details_details_screen.png) |
| Greeting, "Recently Played" card, interest-based tabs, and podcast lists. | Channel cover, follower count, follow/share/download actions, and episode list. | Channel description and metadata in a dedicated tab. |

| Podcast Player | Comments | Rating & Review |
| :---: | :---: | :---: |
| ![Podcast player](docs/screens/home/podcast_palyer_screen.png) | ![Comments screen](docs/screens/home/comments_screen.png) | ![Rating screen](docs/screens/home/rating_screen.png) |
| Circular artwork, seek bar, ±10-second controls, play/pause, favorite, download, listener count, and rating. | Discussion thread for an episode with loading skeletons, empty state, and error handling. | Five-star rating plus a written review, posted directly from the player. |

### 🎙️ Podcast Creation Flow

| Publish Sheet | Recording | Upload Details |
| :---: | :---: | :---: |
| ![Publish podcast sheet](docs/screens/home/publish_podcast_sheet.png) | ![Recording screen](docs/screens/home/recording_screen.png) | ![Upload podcast screen](docs/screens/home/upload_podcast_screen.png) |
| Bottom sheet offering gallery upload or in-app recording. | Animated microphone with live timer, stop/next controls, and a red recording glow. | Audio preview, title, content category, tags, and publish action. |

| Tags | No Channel Dialog | Unregistered Dialog |
| :---: | :---: | :---: |
| ![Tags screen](docs/screens/home/tags_screen.png) | ![No channel dialog](docs/screens/home/no_channel_dialog.png) | ![Unregistered dialog](docs/screens/home/unregistered_dialog.png) |
| Create new tags or select existing ones for better discoverability. | Prompts the user to create a channel before publishing. | Guides guests to sign up before using account-only features. |

### 🧭 Explore

| Explore |
| :---: |
| ![Explore screen](docs/screens/explore/explore_screen.png) |
| Search bar plus horizontally scrolling shelves for **Latest Podcasts**, **Most Listened**, and **Top Categories**, each with a "See all" view. |

### 📚 Library

| Library | Downloads | Favorites |
| :---: | :---: | :---: |
| ![Library screen](docs/screens/library/library_screen.png) | ![Downloads screen](docs/screens/library/downloads_screen.png) | ![Favorites screen](docs/screens/library/favorite_screen.png) |
| Quick access to downloads and favorites, followed-channel grid, and notifications. | Locally saved episodes with playback access. | Saved favorite episodes in a dedicated list. |

| Empty Downloads | Error Downloads | Empty Favorites | Error Favorites |
| :---: | :---: | :---: | :---: |
| ![Empty downloads](docs/screens/library/empty_downloads_screen.png) | ![Error downloads](docs/screens/library/error_downloads_screen.png) | ![Empty favorites](docs/screens/library/empty_favorite_screen.png) | ![Error favorites](docs/screens/library/error_favorite_screen.png) |
| Friendly empty state when nothing has been downloaded yet. | Retry state for failed download requests. | Friendly empty state for the favorites list. | Retry state for failed favorite requests. |

### 👤 Profile & Channel Management

| Profile | Create Channel | Channel — Episodes | Channel — Details |
| :---: | :---: | :---: | :---: |
| ![Profile screen](docs/screens/profile/profile_screen.png) | ![Create channel screen](docs/screens/profile/create_channel_screen.png) | ![Channel episodes](docs/screens/profile/channel_screen_episodes.png) | ![Channel details](docs/screens/profile/channel_screen_details.png) |
| User information, "View Channel", language switcher (English/Arabic), and logout. | Channel avatar picker, channel name, and description. | The creator's published episodes with edit/delete actions. | Channel description and management details. |

---

## ✨ Key Features

### 🎧 Listening Experience

- **Personalized home feed** driven by interests selected during onboarding.
- **Recently played** resume card backed by the user's listening history.
- **Explore shelves** for latest, most-listened, and top-rated podcasts.
- **Live search** by podcast title with dedicated empty and error states.
- **Full audio player** with play/pause, seek slider, ±10-second skip, and playback completion tracking.
- **Offline downloads** using `flutter_downloader`, with downloadable episode management.
- **Favorites and followed channels** synced to the user account.
- **Ratings, reviews, and comments** for community feedback.
- **Podcast reporting** for content moderation.

### 🎙️ Creator Tools

- **Channel creation** with image, name, and description.
- **Channel approval status** handling before publishing.
- **Record episodes in-app** with `flutter_sound`, including live duration display.
- **Upload existing audio files** through the native file picker.
- **Episode metadata**: title, content category, tags, and duration.
- **Tag creation and selection** for improved discoverability.
- **Channel management**: view published episodes, update channel image, and delete channel content.
- **Follow/unfollow** support for listeners.

### 🌍 Localization & UX

- **English and Arabic** localization with generated ARB-based translations.
- **RTL-aware layouts** and Arabic-specific typography (`Cairo` vs. `Outfit`).
- **Persistent language preference** via `SharedPreferences`.
- **Guest mode** with contextual prompts to register when needed.
- **Skeleton/shimmer loading states**, Lottie animations, and micro-interactions.
- **Toast and dialog feedback** for success, failure, and destructive actions.
- **Responsive scaling** with `flutter_screenutil`.

### 🔔 Platform Integration

- **Firebase Cloud Messaging** for push notifications.
- **Awesome Notifications** channel with high-importance delivery.
- **Foreground, background, and notification-tap handling**.
- **FCM token registration** with the backend after onboarding.
- **Native storage permissions** for downloads and media access.

---

## 🏗️ Architecture & Tech Stack

### Architecture Pattern

Mahatacast uses a **feature-first, layered architecture**. Each feature owns its UI, state, data access, and models, which keeps the codebase modular and makes features independently maintainable.

```text
┌─────────────────────────────────────────────────────────┐
│                     Presentation                        │
│         Pages · Widgets · Screens · Dialogs              │
└──────────────────────────┬──────────────────────────────┘
                           │ events / methods
┌──────────────────────────▼──────────────────────────────┐
│                  State Management                       │
│              BLoC · Cubit · Provider                    │
└──────────────────────────┬──────────────────────────────┘
                           │ repository calls
┌──────────────────────────▼──────────────────────────────┐
│                    Data Layer                           │
│       Repositories → Data Sources → REST API            │
│       Either<Failure, Model> · JSON Models              │
└──────────────────────────┬──────────────────────────────┘
                           │ HTTP / multipart
┌──────────────────────────▼──────────────────────────────┐
│              Backend REST API + Firebase                │
└─────────────────────────────────────────────────────────┘
```

**Feature module layout:**

```text
lib/features/<feature>/
├── bloc/                  # BLoC/Cubit, events, states
├── data/
│   ├── datasource/        # API calls
│   ├── models/            # JSON serialization models
│   └── repositories/      # Either<Failure, T> wrappers
└── presentation/
    ├── pages/             # Screens
    └── widgets/           # Reusable UI pieces
```

**Core conventions:**

- **Functional error handling:** repositories return `Either<Failure, T>` using `dartz`; exceptions are mapped to typed failures.
- **Typed HTTP wrappers:** `GetApi`, `PostApi`, token-aware variants, and multipart upload helpers keep networking consistent.
- **State-driven UI:** each screen reacts to loading, success, empty, and failure states through `BlocBuilder` / `BlocListener` / `BlocConsumer`.
- **Local session storage:** `SharedPreferences` stores the auth token, channel ID, language, onboarding flags, and FCM token.
- **Navigation:** Flutter's Navigator 1.0 with named routes where appropriate.

### Tech Stack

| Area | Technology |
| --- | --- |
| **Framework** | Flutter 3.19+ |
| **Language** | Dart 3.3+ |
| **State Management** | `flutter_bloc`, `bloc` (BLoC + Cubit) |
| **Dependency / Locale Injection** | `provider` |
| **Networking** | `http` with custom typed request wrappers |
| **Error Handling** | `dartz` (`Either`), custom `Failure` / `Exception` types |
| **Backend** | REST API (`https://podcastapp6.000webhostapp.com`) |
| **Local Persistence** | `shared_preferences` |
| **Authentication** | Token-based API auth |
| **Push Notifications** | `firebase_messaging`, `awesome_notifications`, `flutter_local_notifications` |
| **Firebase Core** | `firebase_core` |
| **Audio Playback** | `audioplayers` |
| **Audio Recording** | `flutter_sound` |
| **File Downloads** | `flutter_downloader` |
| **File Selection** | `file_picker`, `open_file` |
| **Responsive UI** | `flutter_screenutil` |
| **Visuals & Motion** | `flutter_svg`, `lottie`, `flutter_animate`, `avatar_glow` |
| **Feedback / Toasts** | `bot_toast` |
| **Localization** | `flutter_localizations`, `intl`, ARB files |
| **Permissions** | `permission_handler` |
| **Storage Paths** | `path_provider`, `path` |

---

## 📁 Project Structure

```text
mahatacast/
├── android/                    # Android host project
├── ios/                        # iOS host project
├── web/                        # Web host project
├── linux/                      # Linux host project
├── macos/                      # macOS host project
├── windows/                    # Windows host project
│
├── assets/
│   ├── audio/                  # Bundled audio assets
│   ├── fonts/                  # Outfit, Orbitron, Janna, Cairo
│   ├── icons/
│   │   ├── auth/               # Auth field icons
│   │   ├── explore/            # Explore state icons
│   │   ├── home/               # Player, navigation, action icons
│   │   ├── library/            # Library and empty-state icons
│   │   └── profile/            # Channel/profile icons
│   └── images/
│       ├── animation/          # Lottie animations
│       ├── appIcon.png
│       ├── background.png
│       └── logo.png
│
├── docs/
│   └── screens/                # UI screenshots used in this README
│       ├── auth/
│       ├── explore/
│       ├── home/
│       ├── intro/
│       ├── library/
│       └── profile/
│
├── lib/
│   ├── core/
│   │   ├── api/                # HTTP clients, exceptions, failures
│   │   ├── constants/          # Base URI, colors
│   │   ├── localization-cubit/ # Locale state
│   │   ├── localization-provider/
│   │   ├── message_boxs/       # Reusable dialogs
│   │   └── widgets/            # Shared buttons, fields, app bars
│   │
│   ├── features/
│   │   ├── auth/               # Login, registration, onboarding
│   │   ├── explore/            # Search and curated podcast shelves
│   │   ├── home/               # Feed, details, player, comments, reviews
│   │   ├── intro/              # Splash, language, intro
│   │   ├── library/            # Downloads, favorites, notifications
│   │   ├── main/               # Bottom-navigation shell
│   │   └── profile/            # Profile and channel management
│   │
│   ├── generated/              # Generated localization delegates
│   ├── l10n/                   # intl_en.arb, intl_ar.arb
│   ├── services/               # Firebase notifications, storage helpers
│   ├── firebase_options.dart   # FlutterFire configuration
│   └── main.dart               # App bootstrap and dependency setup
│
├── firebase.json
├── pubspec.yaml
└── README.md
```

---

## 🚦 Getting Started

### Prerequisites

- **Flutter SDK** `>= 3.19.0`
- **Dart SDK** `>= 3.3.0`
- **Android Studio** (with Android SDK) or **Xcode** for iOS
- A configured **Firebase project** with Cloud Messaging enabled
- A reachable **Mahatacast REST API** instance

Verify your environment:

```bash
flutter doctor
```

### 1. Clone the Repository

```bash
git clone <repository-url>
cd mahatacast
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Configure Firebase

The project already includes FlutterFire configuration:

- `lib/firebase_options.dart`
- `android/app/google-services.json`
- `firebase.json`

To use your own Firebase project instead:

```bash
flutterfire configure
```

Then enable **Cloud Messaging** in the Firebase console and ensure the generated options replace the existing ones. For iOS, add `GoogleService-Info.plist` through FlutterFire and enable the **Push Notifications** capability in Xcode.

> The checked-in configuration targets Firebase project `podcastapp-2ea5a`. Replace it with your own project before shipping a production build.

### 4. Configure the Backend URL

The API endpoint lives in `lib/core/constants/base_uri.dart`:

```dart
String baseUri = "https://podcastapp6.000webhostapp.com";
String assetUri = "https://podcastapp6.000webhostapp.com";
```

Update both values if you are running the backend locally or on a different host.

### 5. Run the App

```bash
flutter run
```

Or choose a specific device:

```bash
flutter devices
flutter run -d <device-id>
```

> **Recommended:** run on a physical Android device or emulator. Offline downloads target the Android `Download` directory (`/storage/emulated/0/Download`) and require storage permissions.

### 6. Build for Release

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS (requires macOS + Xcode)
flutter build ios --release
```

---

## ⚙️ Configuration

### Localization

Translation files are located at:

- `lib/l10n/intl_en.arb`
- `lib/l10n/intl_ar.arb`

Generated localization code lives in `lib/generated/`. After editing the ARB files, regenerate the localization delegates using your Flutter Intl tooling, then restart the app.

### App Theme

Global colors are defined in `lib/core/constants/colors.dart`:

```dart
var backgoundColor  = const Color(0xFFFDFBF7); // Warm cream
var redColor        = const Color(0xffE03E27);
var purpleColor     = const Color(0xffBFB5FF); // Primary accent
var greenColor      = const Color(0xffC7F4C2);
var darkGrey        = const Color(0xFF1F1F1F);
```

Typography switches automatically between **Outfit** (English) and **Cairo** (Arabic), with **Orbitron** used for display headlines and **Janna** bundled for additional Arabic styling.

### Session Storage Keys

| Key | Purpose |
| --- | --- |
| `token` | Authenticated user token |
| `id` | Current user's channel ID |
| `lan` | Selected language (`en` / `ar`) |
| `firstTime` | Intro completion flag |
| `select` | Interest-selection completion flag |
| `fcm` | Firebase Cloud Messaging token |

### API Surface

The app communicates with the REST API through feature-specific data sources:

| Feature | Example Endpoints |
| --- | --- |
| Auth | `/api/register`, `/api/login`, `/api/logout` |
| Content | `/api/show/all/content`, `/api/contents/select` |
| Home | `/api/show/podcasts/based/content`, `/api/user/latest/listened/podcast` |
| Podcasts | `/api/show/podcast/{id}`, `/api/upload`, `/api/add/review` |
| Explore | `/api/search/based/title`, `/api/show/latest/podcasts`, `/api/show/most/listened/podcasts`, `/api/show/top/podcasts` |
| Library | `/api/show/user/followed/channels`, `/api/show/user/favourites/podcasts`, `/api/user/downloads` |
| Channels | `/api/request/create/channel`, `/api/show/channel/info/{id}`, `/api/follow/{id}` |
| Notifications | `/api/show/unread/notifications`, `/api/sent/token` |

---

## 🛠️ Troubleshooting

| Issue | Resolution |
| --- | --- |
| **Firebase initialization fails** | Confirm `google-services.json` exists in `android/app/`, `firebase_options.dart` matches your project, and `flutterfire configure` was run if you changed projects. |
| **No push notifications** | Enable Cloud Messaging in Firebase, grant notification permission on the device, and verify the FCM token is sent after onboarding. |
| **Downloads do not start** | Grant storage/media permissions. On Android 11+, ensure "All files access" is allowed if required by the target SDK. Test on a physical device. |
| **API requests fail** | Verify network connectivity and update `baseUri` in `lib/core/constants/base_uri.dart`. |
| **Arabic text or RTL layout is broken** | Confirm the device language or in-app language is set to Arabic; then restart the app. |
| **Gradle or Xcode build issues** | Run `flutter clean`, `flutter pub get`, and rebuild. Ensure your Flutter SDK meets the minimum version. |

---

<p align="center">
  <strong>Mahatacast</strong> — your voice, your audience, your podcast. 🎧
</p>
