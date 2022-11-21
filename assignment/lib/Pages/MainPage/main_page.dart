import 'package:assignment/Pages/MainPage/Brands.dart';
import 'package:assignment/Pages/MainPage/new_arrival_grid.dart';
import 'package:assignment/Pages/MainPage/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'header.dart';
import 'new_arrival_tile.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Ink(
              decoration: const ShapeDecoration(
                color: Color.fromARGB(255, 224, 220, 220),
                shape: CircleBorder(),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 159, 30, 224),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
              margin: const EdgeInsets.only(top: 17),
              child: const Text(
                '375*Hug',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Ink(
              decoration: const ShapeDecoration(
                color: Color.fromARGB(255, 224, 220, 220),
                shape: CircleBorder(),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _space(20.0),
            Container(
              margin: const EdgeInsets.only(left: 15.0),
              child: const Header(
                title: 'Hemendra',
                subtitle: 'Welcome to Laza.',
              ),
            ),
            _space(20.0),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const SearchBar(),
            ),
            _space(20.0),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Choose Brand',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
            ),
            _space(10.0),
            const Brands(),
            _space(10.0),
            Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: const NewArrivalTile()),
            //const NewArrivalGrid(),
          ],
        ),
      ),
    );
  }

  Widget _space(double space) => SizedBox(
        height: space,
      );
}
