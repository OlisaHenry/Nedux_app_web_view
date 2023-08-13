import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';  // ADD

import '../src/navigation_controls.dart';
import '../src/web_view_stack_register.dart';

void main() {
  runApp(
    const MaterialApp(
      //theme: ThemeData(useMaterial3: true),
      home: SignUp(),
    ),
  );
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<SignUp> {
  // Add from here...
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://www.nedux.tech/register'),
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