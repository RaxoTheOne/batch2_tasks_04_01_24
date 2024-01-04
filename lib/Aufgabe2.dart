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
      home: PlatformSpecificIcon(),
    );
  }
}

class PlatformSpecificIcon extends StatelessWidget {
  const PlatformSpecificIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isIOS
          ? const CupertinoIconWidget() // iOS: CupertinoIcon
          : const AndroidIconWidget(), // Android: Material Design Icon
    );
  }
}

class CupertinoIconWidget extends StatelessWidget {
  const CupertinoIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Icon(CupertinoIcons.heart),
      onPressed: () {},
    );
  }
}

class AndroidIconWidget extends StatelessWidget {
  const AndroidIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Aktion für das Material-Design-Icon
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      child: const Icon(Icons.favorite),
    );
  }
}
