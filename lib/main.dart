import 'package:flutter/material.dart';
import 'package:practice/converter.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Unit Converter',style: TextStyle(fontWeight: FontWeight.bold),)),
        backgroundColor: const Color.fromARGB(255, 175, 230, 255),),
        body: const Converter(),
        backgroundColor: const Color.fromARGB(255, 30, 53, 124),
      ),
    ),
  );
}
