import 'package:flutter/material.dart';

import 'package:flutter_login/screens/login_screen.dart';
import 'package:flutter_login/screens/registration_screen.dart';
import 'package:flutter_login/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlutterLogin());
}

class FlutterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData.dark().copyWith(
        //   textTheme: TextTheme(
        //     body1: TextStyle(color: Colors.black54),
        //   ),
        // ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          //NextScreen.id: (context) => NextScreen(),
        });
  }
}
