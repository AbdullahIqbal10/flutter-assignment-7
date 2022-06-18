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
    apiKey: 'AIzaSyA1GjW0B5hJjyARAgXQwywoINlbVFKego0',
    appId: '1:541126185838:web:60e4397e6ecb5a4136e77f',
    messagingSenderId: '541126185838',
    projectId: 'todo-list-afb9a',
    authDomain: 'todo-list-afb9a.firebaseapp.com',
    storageBucket: 'todo-list-afb9a.appspot.com',
    measurementId: 'G-X9Y1CQDSN3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUGKXvEqqmnrdzbSCs7awlNaribt5tmUE',
    appId: '1:541126185838:android:8704c78c5d30f02736e77f',
    messagingSenderId: '541126185838',
    projectId: 'todo-list-afb9a',
    storageBucket: 'todo-list-afb9a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-WEJx-mQGc-ZeA8SHdreaYfaIqTOIjqQ',
    appId: '1:541126185838:ios:a2967ecc6de016a736e77f',
    messagingSenderId: '541126185838',
    projectId: 'todo-list-afb9a',
    storageBucket: 'todo-list-afb9a.appspot.com',
    iosClientId: '541126185838-fhpje5klro26otvv82rcq68uur30vt7r.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoList',
  );
}
