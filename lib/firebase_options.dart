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
    apiKey: 'AIzaSyDVBlcK6UhoFwuUTxx0BfwlU500N9dHa7Q',
    appId: '1:545491248016:web:e2c8459dcae3ac4f434915',
    messagingSenderId: '545491248016',
    projectId: 'tena-project',
    authDomain: 'tena-project.firebaseapp.com',
    storageBucket: 'tena-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqIWvmWmqmQVfzdO3SNT5DJOb4XUqwUUQ',
    appId: '1:545491248016:android:07fc35bac6fcf209434915',
    messagingSenderId: '545491248016',
    projectId: 'tena-project',
    storageBucket: 'tena-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAN3bT-rgaFXZxGzNUD9YCYCxjdai8kahY',
    appId: '1:545491248016:ios:c17b76f6739d09d3434915',
    messagingSenderId: '545491248016',
    projectId: 'tena-project',
    storageBucket: 'tena-project.appspot.com',
    iosClientId: '545491248016-mp9tj6usv505ve9d987edlnbn3o0ud0v.apps.googleusercontent.com',
    iosBundleId: 'com.example.tena',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAN3bT-rgaFXZxGzNUD9YCYCxjdai8kahY',
    appId: '1:545491248016:ios:c17b76f6739d09d3434915',
    messagingSenderId: '545491248016',
    projectId: 'tena-project',
    storageBucket: 'tena-project.appspot.com',
    iosClientId: '545491248016-mp9tj6usv505ve9d987edlnbn3o0ud0v.apps.googleusercontent.com',
    iosBundleId: 'com.example.tena',
  );
}
