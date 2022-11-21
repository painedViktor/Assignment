import 'package:assignment/Pages/MainPage/brands_tile.dart';
import 'package:flutter/material.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        //itemExtent: 120.0,
        children: const [
          BrandsTile(title: 'Adidas', icon: Icon (Icons.sunny)),
          BrandsTile(title: 'Nike', icon: Icon (Icons.radar)),
          BrandsTile(title: 'Puma', icon: Icon (Icons.cloud)),
          BrandsTile(title: 'Adidas', icon: Icon (Icons.sunny)),
          BrandsTile(title: 'Adidas', icon: Icon (Icons.sunny)),
          BrandsTile(title: 'Adidas', icon: Icon (Icons.sunny)),
          BrandsTile(title: 'Adidas', icon: Icon (Icons.sunny)),
        ],
      ),
    );
  }
}