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
          appBar: AppBar(title: Text('Study Flutter'), actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            )
          ]),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              child: Row(children: [
                Image.network(
                  'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201706/23/b71449f8-e830-45a0-bb4d-7b1a328e19f2.jpg',
                  width: 300,
                  height: 150,
                ),
                Container(
                  width: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Text('Title',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                            flex: 5),
                        Flexible(child: Text('@location'), flex: 5),
                        Flexible(child: Text('price'), flex: 5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Icon(Icons.favorite), Text('100')])
                      ]),
                ),
              ]),
            ),
          )),
    );
  }
}
