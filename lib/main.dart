import 'package:flutter/material.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  MySnackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AppBar',
            style: TextStyle(color: Colors.white),
          ),
          titleSpacing: 50,
          backgroundColor: Colors.blue,
          elevation: 10,
          actions: [
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  MySnackBar('This is add Button', context);
                },
                icon: const Icon(Icons.add, color: Colors.white),
              ),
            ),
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  MySnackBar('This is search Button', context);
                },
                icon: const Icon(Icons.search, color: Colors.white),
              ),
            ),
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  MySnackBar('This is settings Button', context);
                },
                icon: const Icon(Icons.settings, color: Colors.white),
              ),
            ),
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  MySnackBar('This is comments Button', context);
                },
                icon: const Icon(Icons.pending_rounded, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
