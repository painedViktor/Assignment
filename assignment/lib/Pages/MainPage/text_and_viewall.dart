import 'package:flutter/material.dart';

class TextAndViewAll extends StatelessWidget {
  final FontWeight fontWeight;
  final String title;
  const TextAndViewAll(
      {super.key, required this.fontWeight, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: fontWeight),
          ),
          const Text(
            'View All',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
