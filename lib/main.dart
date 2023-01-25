import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHome(),


    );
  }
}

class MyHome extends StatelessWidget {
    const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment2'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
                onPressed: () {  },
                child: Text('Show Alert'),),
            )
          ],
        ),
      ),
    );
  }
}



