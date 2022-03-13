// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCkNmPnKUBRm2K7Fg_MjUNNkeeKWBHWkNI',
    appId: '1:717373735261:web:1166d4ffba146447baa8b4',
    messagingSenderId: '717373735261',
    projectId: 'hi-quran',
    authDomain: 'hi-quran.firebaseapp.com',
    storageBucket: 'hi-quran.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJb5YJn_vljiNIkrQkLv7COantKyX90bY',
    appId: '1:717373735261:android:5d9abebb1dc02f92baa8b4',
    messagingSenderId: '717373735261',
    projectId: 'hi-quran',
    storageBucket: 'hi-quran.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8Hmr1-1tsmrN8RdsOkX-z5Oq7wQmLSOM',
    appId: '1:717373735261:ios:3f22e86ea85aa451baa8b4',
    messagingSenderId: '717373735261',
    projectId: 'hi-quran',
    storageBucket: 'hi-quran.appspot.com',
    iosClientId: '717373735261-8fh9mtumbrfi9skd280e6omfg4q4897e.apps.googleusercontent.com',
    iosBundleId: 'com.sahibulnf.quranApp',
  );
}
