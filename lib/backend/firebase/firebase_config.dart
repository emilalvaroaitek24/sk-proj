import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBJa9LahYQn_XPZcgPKjX6g4xuqmg6v_lM",
            authDomain: "panyero-eservices.firebaseapp.com",
            projectId: "panyero-eservices",
            storageBucket: "panyero-eservices.appspot.com",
            messagingSenderId: "949969141690",
            appId: "1:949969141690:web:b7a45fb542601e8487e783",
            measurementId: "G-NWK1QV11GH"));
  } else {
    await Firebase.initializeApp();
  }
}
