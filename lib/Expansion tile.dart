import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded Tile'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 4.0,
                  child: ExpansionTile(
                    backgroundColor: Colors.red,
                    title: Text('Expandable Tile'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Expanded content goes here'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
