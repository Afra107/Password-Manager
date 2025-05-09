import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCBRL_KprbR5KZJMWrZWZG-0aABebdH_WE",
            authDomain: "password-manager-fjmoyo.firebaseapp.com",
            projectId: "password-manager-fjmoyo",
            storageBucket: "password-manager-fjmoyo.firebasestorage.app",
            messagingSenderId: "708132825067",
            appId: "1:708132825067:web:8749d640fe32444f079bae"));
  } else {
    await Firebase.initializeApp();
  }
}
