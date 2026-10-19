# VitVault

VitVault is a recipe app built around cutting food waste. You start from the ingredients already in your kitchen, and it points you to meals you can make with them, including recipes from food cultures around the world.

## Features

- Onboarding, then sign-in with email, phone (SMS verification), Google or Apple through Firebase Auth
- Home feed, recipe search, recipe detail pages with ingredients, instructions and nutrition, and a wishlist
- Save a recipe from a photo, with image upload and cropping
- Recipe videos
- Profile, settings, password reset and account deletion
- 12 languages
- User records in Cloud Firestore, locked down per user by `firebase/firestore.rules`

AI recipe generation is in progress. The OpenAI integration (`dependencies/marketplace_easy_open_a_i_a_p_i_integration_library_n5q5pc`) takes the API key at runtime and never stores it in the code.

## Built with

Flutter and Dart, scaffolded in FlutterFlow. Firebase (Auth, Firestore, Storage, Cloud Functions).

## Running it

1. Install Flutter (stable).
2. Create a Firebase project and add your own `android/app/google-services.json` and `ios/Runner/GoogleService-Info.plist`. Both are git-ignored.
3. For Google sign-in on iOS, replace `YOUR_REVERSED_CLIENT_ID` in `ios/Runner/Info.plist`.
4. For web, pass your Firebase web config at build time:

   ```bash
   flutter run -d chrome \
     --dart-define=FIREBASE_API_KEY=... \
     --dart-define=FIREBASE_AUTH_DOMAIN=... \
     --dart-define=FIREBASE_PROJECT_ID=... \
     --dart-define=FIREBASE_STORAGE_BUCKET=... \
     --dart-define=FIREBASE_MESSAGING_SENDER_ID=... \
     --dart-define=FIREBASE_APP_ID=...
   ```
5. Run `flutter pub get`, then `flutter run`.

The SF Pro Display font is Apple-licensed, so it isn't included. The app falls back to the platform font.
