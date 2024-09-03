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
   
    appId: '1:688222880912:web:5b02a61ca2d998b52f0415',
    messagingSenderId: '688222880912',
    projectId: 'ecommerceapp-bcd67',
    authDomain: 'ecommerceapp-bcd67.firebaseapp.com',
    storageBucket: 'ecommerceapp-bcd67.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
   ,
    appId: '1:688222880912:android:d3421a6cb621e4e52f0415',
    messagingSenderId: '688222880912',
    projectId: 'ecommerceapp-bcd67',
    storageBucket: 'ecommerceapp-bcd67.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
   
    appId: '1:688222880912:ios:aa7d09ea1c34c54c2f0415',
    messagingSenderId: '688222880912',
    projectId: 'ecommerceapp-bcd67',
    storageBucket: 'ecommerceapp-bcd67.appspot.com',
    androidClientId: '688222880912-p29uoiig7c4qjobopodg1t1rbnlfmmc8.apps.googleusercontent.com',
    iosClientId: '688222880912-hkjhe9n6h64dl77t7s5tfcthqltn7qvj.apps.googleusercontent.com',
    iosBundleId: 'com.example.eComrc',
  );

}
