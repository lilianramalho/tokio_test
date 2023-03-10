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
    apiKey: 'AIzaSyBUV94EdvFa1PARznepqt9CbVwHVNDFu6U',
    appId: '1:174736859153:web:23275997eed748d46211b0',
    messagingSenderId: '174736859153',
    projectId: 'tokiotest-4c1ca',
    authDomain: 'tokiotest-4c1ca.firebaseapp.com',
    storageBucket: 'tokiotest-4c1ca.appspot.com',
    measurementId: 'G-PK886E555V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhtXfrebai-A5AHw8I6AtvyfKBNiBuV_I',
    appId: '1:174736859153:android:50103a5486fd064d6211b0',
    messagingSenderId: '174736859153',
    projectId: 'tokiotest-4c1ca',
    storageBucket: 'tokiotest-4c1ca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4F5GNRRlk2xrZFqG604x5H1ESYY4cnB0',
    appId: '1:174736859153:ios:0ee747e790250e196211b0',
    messagingSenderId: '174736859153',
    projectId: 'tokiotest-4c1ca',
    storageBucket: 'tokiotest-4c1ca.appspot.com',
    iosClientId: '174736859153-t429oots0mv8ibr2374hn6o75t6tag7o.apps.googleusercontent.com',
    iosBundleId: 'com.example.tokioTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4F5GNRRlk2xrZFqG604x5H1ESYY4cnB0',
    appId: '1:174736859153:ios:0ee747e790250e196211b0',
    messagingSenderId: '174736859153',
    projectId: 'tokiotest-4c1ca',
    storageBucket: 'tokiotest-4c1ca.appspot.com',
    iosClientId: '174736859153-t429oots0mv8ibr2374hn6o75t6tag7o.apps.googleusercontent.com',
    iosBundleId: 'com.example.tokioTest',
  );
}
