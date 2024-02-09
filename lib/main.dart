import 'package:flutter/material.dart';
import 'package:app1/gradient_cont.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Widget1(Colors.black, Colors.black12)),
    // Appraoch 2
    // home: Scaffold(body: Widget1([Colors.black, Colors.black12])),
  ));
}
