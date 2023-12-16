// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCSLBJYkvqf-SFEV24SyWxXyjX6xLGze0A',
    appId: '1:602895041528:web:f4590ad931927ea5694c0d',
    messagingSenderId: '602895041528',
    projectId: 'appointment-app-8d4dd',
    authDomain: 'appointment-app-8d4dd.firebaseapp.com',
    storageBucket: 'appointment-app-8d4dd.appspot.com',
    measurementId: 'G-0XFZCBKCTL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvEeNa6rEIsOgIDQ-FqkTOVhHWc1EHIO8',
    appId: '1:602895041528:android:af898156cc46c899694c0d',
    messagingSenderId: '602895041528',
    projectId: 'appointment-app-8d4dd',
    storageBucket: 'appointment-app-8d4dd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6h9PTnEW5u1A8IZRGGFVhqzHnocrj0Ew',
    appId: '1:602895041528:ios:f1e2ad2b6d67a4bc694c0d',
    messagingSenderId: '602895041528',
    projectId: 'appointment-app-8d4dd',
    storageBucket: 'appointment-app-8d4dd.appspot.com',
    iosBundleId: 'com.example.medicapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6h9PTnEW5u1A8IZRGGFVhqzHnocrj0Ew',
    appId: '1:602895041528:ios:6350f97fcdb3419a694c0d',
    messagingSenderId: '602895041528',
    projectId: 'appointment-app-8d4dd',
    storageBucket: 'appointment-app-8d4dd.appspot.com',
    iosBundleId: 'com.example.medicapp.RunnerTests',
  );
}