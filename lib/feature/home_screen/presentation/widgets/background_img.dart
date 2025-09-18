import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackgroundImg extends StatelessWidget {
  final Widget child;
  const BackgroundImg({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/vecteezy_vector-retro-futuristic-background_.jpg",
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(child: child),
        ],
      ),
    );
  }
}
