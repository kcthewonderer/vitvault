import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

// Web config comes from --dart-define flags (see README); mobile reads the git-ignored
// google-services.json / GoogleService-Info.plist.
Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: const String.fromEnvironment('FIREBASE_API_KEY'),
            authDomain: const String.fromEnvironment('FIREBASE_AUTH_DOMAIN'),
            projectId: const String.fromEnvironment('FIREBASE_PROJECT_ID'),
            storageBucket: const String.fromEnvironment('FIREBASE_STORAGE_BUCKET'),
            messagingSenderId: const String.fromEnvironment('FIREBASE_MESSAGING_SENDER_ID'),
            appId: const String.fromEnvironment('FIREBASE_APP_ID')));
  } else {
    await Firebase.initializeApp();
  }
}
