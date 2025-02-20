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
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAsHXXYN6iXpCd0CsZzu6Hc8KayvUOWRng',
    appId: '1:708347465486:web:301ccfa428bcfa5210915f',
    messagingSenderId: '708347465486',
    projectId: 'trabalho-final-talp',
    authDomain: 'trabalho-final-talp.firebaseapp.com',
    storageBucket: 'trabalho-final-talp.firebasestorage.app',
    measurementId: 'G-DTLHFLW70E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAriG16Uxny-RCusZGD39fl-aigfzsufGs',
    appId: '1:708347465486:android:6015cdbb50b76e9310915f',
    messagingSenderId: '708347465486',
    projectId: 'trabalho-final-talp',
    storageBucket: 'trabalho-final-talp.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYLFnNBFnBtdwBL1D0ZeEbiVAgMhBdf5Q',
    appId: '1:708347465486:ios:115eab24045c96f410915f',
    messagingSenderId: '708347465486',
    projectId: 'trabalho-final-talp',
    storageBucket: 'trabalho-final-talp.firebasestorage.app',
    iosBundleId: 'com.example.projetoFinalTalp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYLFnNBFnBtdwBL1D0ZeEbiVAgMhBdf5Q',
    appId: '1:708347465486:ios:115eab24045c96f410915f',
    messagingSenderId: '708347465486',
    projectId: 'trabalho-final-talp',
    storageBucket: 'trabalho-final-talp.firebasestorage.app',
    iosBundleId: 'com.example.projetoFinalTalp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAsHXXYN6iXpCd0CsZzu6Hc8KayvUOWRng',
    appId: '1:708347465486:web:fa7d8facd3c11a7310915f',
    messagingSenderId: '708347465486',
    projectId: 'trabalho-final-talp',
    authDomain: 'trabalho-final-talp.firebaseapp.com',
    storageBucket: 'trabalho-final-talp.firebasestorage.app',
    measurementId: 'G-93JQCKWR2G',
  );

}