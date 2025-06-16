import 'package:flutter/material.dart';
import 'package:my_baby_bridge_mobile_app/splash_screen.dart';
import 'package:my_baby_bridge_mobile_app/webview_screen.dart';
import 'package:my_baby_bridge_mobile_app/offline_screen.dart';
import 'package:my_baby_bridge_mobile_app/platform_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyBabyBridge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
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
