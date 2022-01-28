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
    apiKey: 'AIzaSyCFmP0pt1FhUaQqUhC7kFt5y0TQF2xjmOc',
    appId: '1:26077803550:web:56b47dfb1585a1c096ea0f',
    messagingSenderId: '26077803550',
    projectId: 'minimybutterring',
    authDomain: 'minimybutterring.firebaseapp.com',
    storageBucket: 'minimybutterring.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClYOG90MswxxEJLWH2RY5Jrx4yqsZaFa8',
    appId: '1:26077803550:android:3535cc6bf08f878c96ea0f',
    messagingSenderId: '26077803550',
    projectId: 'minimybutterring',
    storageBucket: 'minimybutterring.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDojrYsNTBe83ATe2i_tzYss9MuPwzC4Ok',
    appId: '1:26077803550:ios:468390bab1edcf7d96ea0f',
    messagingSenderId: '26077803550',
    projectId: 'minimybutterring',
    storageBucket: 'minimybutterring.appspot.com',
    iosClientId: '26077803550-vpo6kop87qbg11rope29ag0t6klopslq.apps.googleusercontent.com',
    iosBundleId: 'com.barkey.minimybutterring',
  );
}
