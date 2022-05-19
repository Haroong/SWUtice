import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Flutter'), actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            ),
          ]),
          bottomNavigationBar: AppBottomBar(),
          body: ListView(
            children: [
              Row(
                children: [Icon(Icons.person), Text('HongGilDong')],
              ),
              Row(
                children: [Icon(Icons.person), Text('HongGilDong')],
              ),
              Row(
                children: [Icon(Icons.person), Text('HongGilDong')],
              )
            ],
          ),
        ));
  }
}

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.person_outline),
        ],
      ),
    );
  }
}
