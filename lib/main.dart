import 'package:flutter/material.dart';

import 'package:determined/routes/index.dart';
import 'package:determined/utils/local-storage/index.dart';

void main() {
  runApp(const App());
  localStorage.setString('名字', '张显磊');
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen)),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '决心与计划',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
//         useMaterial3: true,
//       ),
//       darkTheme: ThemeData.dark(useMaterial3: true),
//       home: const MyHomePage(title: '首页'),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int counter = 0;
//   String name = '';
//   String token = '默认token';

//   void _incrementCounter() {
//     setState(() {
//       counter++;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     localStorage.getString("名字").then((value) => {
//           if (value is String)
//             {
//               setState(() {
//                 name = value;
//               })
//             }
//         });
//     UserApi.postLogin("admin", "123456").then((value) {
//       setState(() {
//         token = value.data.token;
//       });
//     }).onError((error, stackTrace) {
//       developer.debugger();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       //   title: Text(widget.title),
//       // ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               '按了多少次:',
//             ),
//             Text(
//               '$counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             Text(name),
//             Text(token)
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
