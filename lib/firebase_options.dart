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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
        return windows;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCIf0-JZ965ccwajByYxlyo5XHnqJ1KRkY',
    appId: '1:862381205686:android:01a82cea4f182e2e569e17',
    messagingSenderId: '862381205686',
    projectId: 'bloc-ecommerce-555',
    storageBucket: 'bloc-ecommerce-555.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcHs-6AzjZl9EBatYx6EMWACrjVqgFmzU',
    appId: '1:862381205686:ios:b2b0bdc07691376f569e17',
    messagingSenderId: '862381205686',
    projectId: 'bloc-ecommerce-555',
    storageBucket: 'bloc-ecommerce-555.appspot.com',
    iosClientId: '862381205686-1drgr4t1ha0d7h211jg1q5k0cto5cjgj.apps.googleusercontent.com',
    iosBundleId: 'com.codejet.blocecommerce.blocEcommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCoRUeGvOubIm-hnhLKZCP_qBgurulobhg',
    appId: '1:862381205686:web:32bfc6d424556ec4569e17',
    messagingSenderId: '862381205686',
    projectId: 'bloc-ecommerce-555',
    authDomain: 'bloc-ecommerce-555.firebaseapp.com',
    storageBucket: 'bloc-ecommerce-555.firebasestorage.app',
    measurementId: 'G-FZ7RTMWKD4',
  );

}