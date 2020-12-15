import 'package:flutter/material.dart';

class NarrowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baby Naming App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Narrow Page")],
        ),
      ),
    );
  }
}
