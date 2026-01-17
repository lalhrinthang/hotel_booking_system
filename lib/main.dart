import 'package:flutter/material.dart';
import '/screens/splash_screen_static.dart';
import '/screens/home_page.dart';
import '/screens/login_screen_static.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set splash screen as the initial route
      home: OnboardingScreen(),
      // Optional: Define named routes for better navigation management
      routes: {
        '/Onboarding': (context) => OnboardingScreen(),
        // Add other routes here as needed
        '/login': (context) => LoginPage(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}