import 'dart:io';
import 'package:flutter/material.dart';

class PlatformNavigation extends StatelessWidget {
  final Widget child;
  const PlatformNavigation({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      // On Android, use WillPopScope to intercept the back button.
      return WillPopScope(
        onWillPop: () async {
          // (In a real app, you might check if the WebView can go back.)
          // For now, we simply pop the route (exit the app).
          Navigator.of(context).pop();
          return false;
        },
        child: child,
      );
    } else if (Platform.isIOS) {
      // On iOS, simulate a swipe back.
      return GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity != null && details.primaryVelocity! > 0) {
            Navigator.of(context).pop();
          }
        },
        child: child,
      );
    }
    // Default fallback for other non-web platforms.
    return child;
  }
} 