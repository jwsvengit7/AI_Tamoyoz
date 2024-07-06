import 'package:flutter/material.dart';

class SearchBarInput extends StatelessWidget {
  const SearchBarInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        fillColor: Colors.grey[200],
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
          },
        ),
      ),
    );
  }
}