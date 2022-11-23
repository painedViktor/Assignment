import 'package:assignment/Pages/MainPage/Brands.dart';
import 'package:assignment/Pages/MainPage/new_arrival_grid.dart';
import 'package:assignment/Pages/MainPage/search_bar.dart';
import 'package:assignment/Pages/MainPage/text_and_viewall.dart';
import 'package:flutter/material.dart';
import 'app_bar_row.dart';
import 'header.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverAppBar(
              floating: true,
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: AppBarRow(
                title: '375×Hug',
                leftIcon: Icon(
                  Icons.dehaze,
                  color: Colors.black,
                ),
                rightIcon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  _space(20.0),
                  const Header(
                    title: 'Hemendra',
                    subtitle: 'Welcome to Laza.',
                  ),
                  _space(20.0),
                  const SearchBar(),
                  _space(20.0),
                  const TextAndViewAll(
                    fontWeight: FontWeight.w500,
                    title: 'Choose Brand',
                  ),
                  _space(10.0),
                  const Brands(),
                  _space(20.0),
                  const TextAndViewAll(
                    fontWeight: FontWeight.w400,
                    title: 'New Arrival',
                  ),
                  const NewArrivalGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _space(double space) => SizedBox(
        height: space,
      );
}
