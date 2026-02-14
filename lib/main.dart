import 'package:aura_eats/features/auth/view/login_view.dart';
import 'package:aura_eats/features/auth/view/signup_view.dart';
import 'package:aura_eats/features/home/view/home_view.dart';
import 'package:aura_eats/root.dart';
import 'package:aura_eats/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Root());
  }
}
