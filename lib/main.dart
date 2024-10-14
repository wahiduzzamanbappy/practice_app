import 'package:flutter/material.dart';

main() {
  runApp(Helloapp());
}

class Helloapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'New Model',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue),
            ),
            Image.network(
              "https://contents.mediadecathlon.com/p2393865/59e9499e49d170903fb3c71ddaf67c3a/p2393865.jpg?format=auto&quality=70&f=2520x0",
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
