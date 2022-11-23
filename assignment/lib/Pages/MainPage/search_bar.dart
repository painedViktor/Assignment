import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: TextField(
                cursorColor: Colors.black,
                maxLines: 1,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  isDense: true,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  hintText: 'Search...',
                  filled: true,
                  fillColor: Color.fromARGB(255, 229, 228, 228),
                  focusColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 229, 228, 228),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 229, 228, 228),
                    ),
                  ),
                ),
                controller: _controller,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 159, 30, 224),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.mic,
                size: 30,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
