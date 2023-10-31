import 'package:dicee/dice.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[600],
        appBar: AppBar(
          title: const Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: const Dice(),
      ),
    ),
  );
}
