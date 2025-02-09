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
        child: Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(border: Border.all(width: 3.0)),
                child: Image.asset(
                  'images/mangoes.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(border: Border.all(width: 3.0)),
                  child: Image.asset(
                    'images/heels.jpg',
                    fit: BoxFit.cover,
                  ))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(border: Border.all(width: 3.0)),
                    child: Image.asset(
                      'images/books.jpg',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 30,
                ),
                Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(border: Border.all(width: 3.0)),
                    child: Image.asset(
                      'images/bananas.jpg',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 30,
                ),
                Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(border: Border.all(width: 3.0)),
                    child: Image.asset(
                      'images/shoes.jpeg',
                      fit: BoxFit.cover,
                    ))
              ],
            )
          ]),
    ));
  }
}
