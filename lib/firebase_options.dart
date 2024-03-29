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
    apiKey: 'AIzaSyBI21lY-g8Ptpv-7YTPwvEd3Lm_HSh18nE',
    appId: '1:629582805381:web:6028bf5cca06a6d0902cec',
    messagingSenderId: '629582805381',
    projectId: 'aha-camping',
    authDomain: 'aha-camping.firebaseapp.com',
    storageBucket: 'aha-camping.appspot.com',
    measurementId: 'G-LDYJ3RLGV4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCoe9a_pVXzrvBhaWd9gu8h2tCehXFgq2M',
    appId: '1:629582805381:android:74955bf3327c766e902cec',
    messagingSenderId: '629582805381',
    projectId: 'aha-camping',
    storageBucket: 'aha-camping.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCeII4SSKzPlY0O6w4apsDvZ_wGRPRVi0c',
    appId: '1:629582805381:ios:d5f069a2ca91d977902cec',
    messagingSenderId: '629582805381',
    projectId: 'aha-camping',
    storageBucket: 'aha-camping.appspot.com',
    iosClientId: '629582805381-42t3kdk48ndol5l0gho6m824r8mo8agu.apps.googleusercontent.com',
    iosBundleId: 'com.example.ahaCampingWeb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCeII4SSKzPlY0O6w4apsDvZ_wGRPRVi0c',
    appId: '1:629582805381:ios:d5f069a2ca91d977902cec',
    messagingSenderId: '629582805381',
    projectId: 'aha-camping',
    storageBucket: 'aha-camping.appspot.com',
    iosClientId: '629582805381-42t3kdk48ndol5l0gho6m824r8mo8agu.apps.googleusercontent.com',
    iosBundleId: 'com.example.ahaCampingWeb',
  );
}
