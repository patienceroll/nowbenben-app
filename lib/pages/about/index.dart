import 'package:determined/routes/index.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  void onPressedJump() {
    router.goNamed('home');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('关于我们'),
          IconButton(onPressed: onPressedJump, icon: const Icon(Icons.backpack))
        ],
      ),
    ));
  }
}
