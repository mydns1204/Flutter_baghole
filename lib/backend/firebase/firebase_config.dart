import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBNwkaFWfOS-T_0XECCtXEWRBtQmJ6xLuQ",
            authDomain: "baghole-b821a.firebaseapp.com",
            projectId: "baghole-b821a",
            storageBucket: "baghole-b821a.appspot.com",
            messagingSenderId: "809544618506",
            appId: "1:809544618506:web:4bab01d4247715c3b945f3"));
  } else {
    await Firebase.initializeApp();
  }
}
