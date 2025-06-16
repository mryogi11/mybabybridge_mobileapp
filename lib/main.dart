import 'package:flutter/material.dart';
import 'offline_screen.dart';
import 'webview_screen.dart';
import 'platform_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BabyBridge Mobile Wrapper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const PlatformNavigation(child: WebViewScreen()),
        const OfflineScreen(),
      ],
    );
  }
}
