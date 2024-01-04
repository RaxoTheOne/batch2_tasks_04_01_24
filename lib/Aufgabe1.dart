import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Batch 2 - Aufgabe 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Material Design Button
            Platform.isIOS
                ? CupertinoButton(
                    onPressed: () {
                      // Aktion für den Cupertino-Button
                    },
                    color: CupertinoColors.systemBlue,
                    child: const Text('Cupertino Button'),
                  )
                : ElevatedButton(
                    onPressed: () {
                      // Aktion für den ElevatedButton
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Elevated Button'),
                  ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
