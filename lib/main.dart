import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:we_connect/firebase_options.dart';
import 'package:we_connect/pages/home_page.dart';
import 'package:we_connect/themes/theme_provider.dart';

void main() async {
  // Firebase Setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Run App
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider())
    ],
    child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeProvider>().themeData,
      home: const HomePage(),
    );
  }
}