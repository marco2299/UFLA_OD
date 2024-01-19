import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKWWRvghU1BDh-q3DzdV5YnHGQJC9xOZY",
            authDomain: "uflaod.firebaseapp.com",
            projectId: "uflaod",
            storageBucket: "uflaod.appspot.com",
            messagingSenderId: "667130559934",
            appId: "1:667130559934:web:48e8c0601c3f3b191b8def",
            measurementId: "G-6JN57W8614"));
  } else {
    await Firebase.initializeApp();
  }
}
