import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2023/major_input.dart';
import 'package:hackathon2023/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDxCVl_VaPTgHBrO-A6HDpMouYrzCdX5BI",
        appId: "1:115051447192:web:db27aa5cd4d3c37c9321ed",
        messagingSenderId: "115051447192",
        projectId: "hackathon2023-2a898",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: MajorInputPage(),
        ),
        // '/login': (context) => LoginPage(),
        // '/signUp': (context) => SignUpPage(),
        // '/home': (context) => HomePage(),
      },
    );
  }
}
