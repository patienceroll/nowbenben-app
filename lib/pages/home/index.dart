import 'package:flutter/material.dart';

import 'package:determined/routes/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const Text("点击了多少次:"), Text('$count')],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          router.push(
            '/about?id=3',
          )
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
