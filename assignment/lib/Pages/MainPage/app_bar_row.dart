import 'package:flutter/material.dart';

class AppBarRow extends StatelessWidget {
  final String title;
  final Icon leftIcon;
  final Icon rightIcon;
  const AppBarRow(
      {super.key,
      required this.title,
      required this.leftIcon,
      required this.rightIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Ink(
          decoration: const ShapeDecoration(
            color: Color.fromARGB(255, 224, 220, 220),
            shape: CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            icon: leftIcon,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 159, 30, 224),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
          margin: const EdgeInsets.only(top: 17),
          child: Text(
            title,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        Ink(
          decoration: const ShapeDecoration(
            color: Color.fromARGB(255, 224, 220, 220),
            shape: CircleBorder(),
          ),
          child: IconButton(
            onPressed: () {},
            icon: rightIcon,
          ),
        ),
      ],
    );
  }
}
