import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC0dv5Budu76DUMzCb3dLiCkEQ68hhU8zk",
            authDomain: "a-s-dwithchat-6wpow6.firebaseapp.com",
            projectId: "a-s-dwithchat-6wpow6",
            storageBucket: "a-s-dwithchat-6wpow6.appspot.com",
            messagingSenderId: "893152969258",
            appId: "1:893152969258:web:e51870c56dcfe9ab293953"));
  } else {
    await Firebase.initializeApp();
  }
}
