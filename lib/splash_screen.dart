import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_baby_bridge_mobile_app/webview_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  bool _animationStarted = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Lottie.asset(
            'assets/animation.json',
            controller: _controller,
            repeat: false,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            onLoaded: (composition) {
              if (_animationStarted) return;
              _animationStarted = true;

              _controller
                ..duration = composition.duration
                ..forward().whenComplete(() {
                  if (mounted) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const WebViewScreen()),
                    );
                  }
                });
            },
          ),
          Image.asset('assets/logo.png', width: 250),
        ],
      ),
    );
  }
} 