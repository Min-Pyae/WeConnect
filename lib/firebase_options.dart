// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyAwm3Wmuhp9zLoYb2oVkap3gC4Wvlu7WAU',
    appId: '1:1080674298003:web:17e93a6f5b6dde118a8566',
    messagingSenderId: '1080674298003',
    projectId: 'weconnect-41ad3',
    authDomain: 'weconnect-41ad3.firebaseapp.com',
    storageBucket: 'weconnect-41ad3.firebasestorage.app',
    measurementId: 'G-NB8WPFZ46S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGjvmQam6JEhmXxCrQR3hy5MDkCfNLJCQ',
    appId: '1:1080674298003:android:3230388a9f30a6648a8566',
    messagingSenderId: '1080674298003',
    projectId: 'weconnect-41ad3',
    storageBucket: 'weconnect-41ad3.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdWhv9_28vVgP2oZO3oYamKrswd-aob-A',
    appId: '1:1080674298003:ios:de6d5503beab0c5f8a8566',
    messagingSenderId: '1080674298003',
    projectId: 'weconnect-41ad3',
    storageBucket: 'weconnect-41ad3.firebasestorage.app',
    iosBundleId: 'com.example.weConnect',
  );
}
