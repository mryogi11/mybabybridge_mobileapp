import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class OfflineScreen extends StatefulWidget {
  const OfflineScreen({super.key});

  @override
  State<OfflineScreen> createState() => _OfflineScreenState();
}

class _OfflineScreenState extends State<OfflineScreen> {
  bool _isOffline = false;

  @override
  void initState() {
    super.initState();
    // Listen for connectivity changes (using connectivity_plus) and update _isOffline accordingly.
    Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> result) {
      setState(() { _isOffline = result.contains(ConnectivityResult.none); });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isOffline) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You are offline."),
              ElevatedButton(
                onPressed: () {
                  // (In a real app, you might trigger a reload of the WebView or recheck connectivity.)
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Retrying...")));
                },
                child: const Text("Retry"),
              ),
            ],
          ),
        ),
      );
    } else {
      // If online, return an empty container (or a placeholder) so that the WebView (or main screen) is shown.
      return const SizedBox.shrink();
    }
  }
} 