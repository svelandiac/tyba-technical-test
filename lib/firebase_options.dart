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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAEkGWFMVP1-2RzpsdGbetFz2rsDWCVXRg',
    appId: '1:39373528042:web:c682bb5186d5f5cb02b093',
    messagingSenderId: '39373528042',
    projectId: 'tyba-technical-test',
    authDomain: 'tyba-technical-test.firebaseapp.com',
    storageBucket: 'tyba-technical-test.appspot.com',
    measurementId: 'G-PC67PWPZR5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIKySxz8xKJQrPsvFOihmIzaJocM7qFLA',
    appId: '1:39373528042:android:f6c55dc6f690296d02b093',
    messagingSenderId: '39373528042',
    projectId: 'tyba-technical-test',
    storageBucket: 'tyba-technical-test.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnK3mlUzHsjbiPLK3VR954l43Xw24Nbsk',
    appId: '1:39373528042:ios:4fc687157da895f802b093',
    messagingSenderId: '39373528042',
    projectId: 'tyba-technical-test',
    storageBucket: 'tyba-technical-test.appspot.com',
    iosClientId: '39373528042-9uijvhqr37goo1odvis0ajmlcmjid8e7.apps.googleusercontent.com',
    iosBundleId: 'com.svelandiac.tybaTechnicalTest',
  );
}