import 'package:flutter/material.dart';

class NewArrivalTile extends StatelessWidget {
  final String image;
  final String description;
  final int priceInDollars;
  const NewArrivalTile(
      {super.key,
      required this.description,
      required this.image,
      required this.priceInDollars});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 230,
                width: 170,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  splashRadius: 1,
                  icon: const Icon(Icons.favorite_outline),
                  onPressed: () {},
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 17,
            ),
            maxLines: 2,
          ),
          Text(
            '\$$priceInDollars',
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
