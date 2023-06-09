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
    apiKey: 'AIzaSyCotdYOgkvuoUVmgl087suy1ZSjwKjrbLs',
    appId: '1:489119533563:web:63e211dfc93975bf98635e',
    messagingSenderId: '489119533563',
    projectId: 'fir-7c87b',
    authDomain: 'fir-7c87b.firebaseapp.com',
    storageBucket: 'fir-7c87b.appspot.com',
    measurementId: 'G-XQR4RPWSHR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDq65bnp4fkzqCdFaj3un0AbD6T2d0c2cw',
    appId: '1:489119533563:android:9d6c9642285c52ca98635e',
    messagingSenderId: '489119533563',
    projectId: 'fir-7c87b',
    storageBucket: 'fir-7c87b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVRHHhiuQdLk17s0uHRJI-2oMwFty3kOs',
    appId: '1:489119533563:ios:9929181cd814f85698635e',
    messagingSenderId: '489119533563',
    projectId: 'fir-7c87b',
    storageBucket: 'fir-7c87b.appspot.com',
    iosClientId: '489119533563-fns6sgseaqq72ou8t282unp96gpiir4q.apps.googleusercontent.com',
    iosBundleId: 'com.example.basicApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVRHHhiuQdLk17s0uHRJI-2oMwFty3kOs',
    appId: '1:489119533563:ios:9929181cd814f85698635e',
    messagingSenderId: '489119533563',
    projectId: 'fir-7c87b',
    storageBucket: 'fir-7c87b.appspot.com',
    iosClientId: '489119533563-fns6sgseaqq72ou8t282unp96gpiir4q.apps.googleusercontent.com',
    iosBundleId: 'com.example.basicApp',
  );
}
