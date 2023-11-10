import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'src/constants/color_manager.dart';
import 'src/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat.Me',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: ColorManager.primaryColor,
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          primarySwatch: ColorManager.primarySwatch,
          accentColor: ColorManager.accentColor,
          backgroundColor: ColorManager.backgroundColor,
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
