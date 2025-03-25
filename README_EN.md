# Wallpaper App

[中文](README.md) | English

A wallpaper application developed with Flutter that fetches high-quality wallpapers through the Pixabay API.

## Features

- Browse high-quality wallpapers
- Filter wallpapers by categories (nature, animals, architecture, etc. - 20 categories)
- Search for specific wallpapers
- View wallpaper details (author, tags, views, etc.)
- Beautiful waterfall layout display

## Tech Stack

- Flutter SDK ^3.7.2
- State Management: Flutter native setState
- API: Pixabay API

## Main Dependencies

- http: ^1.1.0 - Network requests
- cached_network_image: ^3.3.0 - Image caching
- flutter_staggered_grid_view: ^0.7.0 - Waterfall layout
- flutter_dotenv: ^5.1.0 - Environment variable management

## Project Structure

```
lib/
  ├── main.dart              # Application entry
  ├── models/                # Data models
  │   └── wallpaper_model.dart
  ├── screens/               # Pages
  │   ├── home_screen.dart
  │   └── wallpaper_detail_screen.dart
  └── services/              # Services
      └── api_service.dart
```

## Environment Setup

1. Create a `.env` file in the project root directory
2. Add your Pixabay API key to the `.env` file:
   ```
   PIXABAY_API_KEY=your_api_key_here
   ```

## Getting Started

1. Clone the project
2. Run `flutter pub get` to install dependencies
3. Configure the `.env` file
4. Run `flutter run` to start the application

## Notes

- A Pixabay API key is required to fetch wallpaper data
- The application only supports portrait mode