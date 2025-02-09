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
            Image.asset('images/mangoes.jpg',
            height:100,
            width:100),
            Image.asset('images/heels.jpg',
            height:100,
            width:100),
            Image.asset('images/books.jpg',
            height:100,
                width: 100,),
            Image.asset('images/bananas.jpg',
              height:100,
              width: 100,),
            Image.asset('images/hats.jpeg',
              height:100,
              width: 100,)
          ]
        ),
    );
  }
}
