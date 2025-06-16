import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PullToRefresh extends StatelessWidget {
  final Widget child;
  final WebViewController controller;

  const PullToRefresh({Key? key, required this.child, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // Reload the WebView (using the provided controller) on pull-to-refresh.
        await controller.reload();
      },
      child: child,
    );
  }
} 