import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';  // ADD

import '../src/navigation_controls.dart';
import '../src/web_view_stack.dart';

void main() {
  runApp(
    const MaterialApp(
      //theme: ThemeData(useMaterial3: true),
      home: Login(),
    ),
  );
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<Login> {
  // Add from here...
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://www.nedux.tech/login'),
      );
  }
  // ...to here.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nedux Diary'),
        // Add from here...
        actions: [
          NavigationControls(controller: controller),
        ],
        // ...to here.
      ),
      body: WebViewStack(controller: controller),       // MODIFY
    );
  }
}