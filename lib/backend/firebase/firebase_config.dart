import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyATFWZfwWYW2sTH1frpGU0Yhb-wmy3jkHg",
            authDomain: "dinoursal-432b1.firebaseapp.com",
            projectId: "dinoursal-432b1",
            storageBucket: "dinoursal-432b1.firebasestorage.app",
            messagingSenderId: "533032593269",
            appId: "1:533032593269:web:6d85fe63923564d692153c",
            measurementId: "G-RRV3795Y59"));
  } else {
    await Firebase.initializeApp();
  }
}
