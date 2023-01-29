import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA7WRXJQ6rFNa679jIyg1QbpcrBdo_Jy4g",
            authDomain: "spartahack8-e459e.firebaseapp.com",
            projectId: "spartahack8-e459e",
            storageBucket: "spartahack8-e459e.appspot.com",
            messagingSenderId: "991486042221",
            appId: "1:991486042221:web:f4793041237e4fe5649f64",
            measurementId: "G-VHN5WHS9D3"));
  } else {
    await Firebase.initializeApp();
  }
}
