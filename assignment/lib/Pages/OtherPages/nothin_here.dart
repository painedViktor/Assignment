import 'package:flutter/material.dart';

class NothinHere extends StatelessWidget {
  const NothinHere({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Nothing here yet..',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
