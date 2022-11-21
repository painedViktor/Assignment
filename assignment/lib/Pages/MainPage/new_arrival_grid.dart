import 'package:flutter/material.dart';

class NewArrivalGrid extends StatefulWidget {
  const NewArrivalGrid({super.key});

  @override
  State<NewArrivalGrid> createState() => _NewArrivalGridState();
}

class _NewArrivalGridState extends State<NewArrivalGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
         const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        
      ],
    );

  }
}
