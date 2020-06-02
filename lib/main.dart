import 'package:flutter/material.dart';
import 'package:quotes_of_the_day/ui/wisdom.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wisdom(),
      debugShowCheckedModeBanner: false,
    );
  }
}
