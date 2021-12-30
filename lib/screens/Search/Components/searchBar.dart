import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.all(16),
        width: double.infinity,
        height: 60,

        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1), borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.white.withOpacity(0.5)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear,color: Colors.white.withOpacity(0.5)),
                  onPressed: () {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
