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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Alert Dialog Box"),
                      content: const Text("You have raised a Alert Dialog Box"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            color: Colors.green,
                            padding: const EdgeInsets.all(14),
                            child: const Text("okay"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Show alert Dialog box"),
              ),
            )
          ],
        ),
      ),
    );
  }
}



