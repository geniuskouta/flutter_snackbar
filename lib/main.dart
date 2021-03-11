import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar test'),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          // the new approach to show SnackBar
          // Builder is no longer required
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('snackbar appeared'),
              duration: const Duration(seconds: 3),
              action: SnackBarAction(
                label: 'dismiss',
                onPressed: () {},
              ),
            ),
          );
        },
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
