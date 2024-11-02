import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TravelerApp());
}

class TravelerApp extends StatelessWidget {
  const TravelerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      //home: Home(),
    );
  }
}

