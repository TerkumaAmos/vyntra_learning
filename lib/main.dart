import 'package:flutter/material.dart';
//import 'package:vyntra_learn/ui/auth/create_account.dart';
import 'package:vyntra_learn/ui/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SignInScreen());
  }
}
