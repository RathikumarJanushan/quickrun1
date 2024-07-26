import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quickrun1/view/login/welcome_view.dart';
import 'package:quickrun1/view/on_boarding/startup_view.dart';
import 'package:quickrun1/view/user/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartupView(),
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const WelcomeView(),
        // Define other routes here
      },
    );
  }
}
