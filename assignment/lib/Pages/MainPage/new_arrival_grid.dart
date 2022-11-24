import 'package:assignment/Pages/MainPage/new_arrival_tile.dart';
import 'package:flutter/material.dart';

class NewArrivalGrid extends StatefulWidget {
  const NewArrivalGrid({super.key});

  @override
  State<NewArrivalGrid> createState() => _NewArrivalGridState();
}

class _NewArrivalGridState extends State<NewArrivalGrid> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceEvenly,
      children: const [
        NewArrivalTile(
          image: 'assets/Clothes/adidas2.jpg',
          description: 'amazing clothes bro super',
          priceInDollars: 125,
        ),
        NewArrivalTile(
          image: 'assets/Clothes/nike.jpeg',
          description: 'amazing r',
          priceInDollars: 125,
        ),
        NewArrivalTile(
          image: 'assets/Clothes/nike.jpeg',
          description: 'amazing r',
          priceInDollars: 125,
        ),
        NewArrivalTile(
          image: 'assets/Clothes/nike2.png',
          description: 'amazing r',
          priceInDollars: 125,
        ),
        NewArrivalTile(
          image: 'assets/Clothes/adidas2.jpg',
          description: 'amazing clothes bro super',
          priceInDollars: 125,
        ),
      ],
    );
  }
}
