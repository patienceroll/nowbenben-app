import 'package:determined/routes/index.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key, required this.id});

  final String id;

  void onPressedJump() {
    router.push('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('关于我们'),
            IconButton(
                onPressed: onPressedJump, icon: const Icon(Icons.backpack))
          ],
        ),
      )),
    );
  }
}
