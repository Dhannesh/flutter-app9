import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insta Store",
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text("Insta Store"),
        ),
        body: const RowOrColumn(),
      ),
    );
  }
}

class RowOrColumn extends StatelessWidget {
  const RowOrColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: Column(
          // Main axis is now called top t0 bottom
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset('images/mangoes.jpg'),
            ),
            Expanded(flex: 2,
              child: Image.asset('images/heels.jpg')),
            Expanded(flex: 4,child: Image.asset('images/books.jpg')),
            Expanded(flex: 6,
                child: Image.asset('images/bananas.jpg')),
            Expanded(flex: 8
                ,child: Image.asset('images/hats.jpeg'))
          ]
        ),
    );
  }
}
