import 'package:flutter/material.dart';

main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  MySnackBar(message, context) {
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
          //centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 10,
          toolbarOpacity: 1,
          actions: [
            IconButton(
              onPressed: () {
                MySnackBar('This is add Button', context);
              },
              icon: const Icon(Icons.add, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                MySnackBar('This is search Button', context);
              },
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                MySnackBar('This is settings Button', context);
              },
              icon: const Icon(Icons.settings, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                MySnackBar('This is comments Button', context);
              },
              icon: const Icon(Icons.pending_rounded, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
