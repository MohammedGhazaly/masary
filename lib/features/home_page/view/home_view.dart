import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Massary App"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.light_mode_rounded))
        ],
      ),
    );
  }
}
