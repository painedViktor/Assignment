import 'package:flutter/material.dart';

import 'Pages/MainPage/main_page.dart';
import 'Pages/OtherPages/nothin_here.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _pageList = const [
    MainPage(),
    NothinHere(),
    NothinHere(),
    NothinHere(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _pageList,
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            unselectedLabelStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedLabelStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
            selectedItemColor: const Color.fromARGB(255, 159, 30, 224),
            onTap: (value) => setState(() {
              _currentIndex = value;
            }),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  null,
                  size: 0,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 19.0),
                  child: Icon(
                    Icons.favorite_outline,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 19.0),
                  child: Icon(
                    Icons.person_outline,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 19.0),
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
