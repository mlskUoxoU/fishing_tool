import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('情報'),
      ),
      body: const Center(
          child: Text('情報', style: TextStyle(fontSize: 32.0))),
    );
  }
}