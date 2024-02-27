import 'package:flutter/material.dart';

class FishingPond extends StatelessWidget {
  const FishingPond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('釣り堀'),
      ),
      body: const Center(
          child: Text('釣り堀', style: TextStyle(fontSize: 32.0))),
    );
  }
}