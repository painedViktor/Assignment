import 'package:flutter/material.dart';

class NewArrivalTile extends StatelessWidget {
  const NewArrivalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 310,
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 230,
                width: 180,
                child: Image.asset(
                  'assets/Clothes/adidas2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: const Icon(Icons.heart_broken),
                  onPressed: () {},
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'amazing clothes',
            style: TextStyle(
              fontSize: 17,
            ),
            maxLines: 2,
          ),
          const Text(
            '\$125',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
