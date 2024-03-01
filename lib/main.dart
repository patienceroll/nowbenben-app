import 'package:determined/api/user/index.dart';
import 'package:determined/api/user/type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:determined/routes/index.dart';
import 'package:determined/utils/local-storage/index.dart';

void main() {
  runApp(const App());
  localStorage.setString('名字', '张显磊');
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  User? _user;

  @override
  void initState() async {
    super.initState();
    final user = await UserApi.userInfo();
    setState(() {
      _user = user.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
        value: _user,
        builder: (context, child) => MaterialApp.router(
              routerConfig: router,
              darkTheme: ThemeData.dark(
                useMaterial3: true,
              ),
              theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.lightGreen)),
            ));
  }
}
