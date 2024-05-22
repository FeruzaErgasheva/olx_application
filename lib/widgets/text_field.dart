import 'package:flutter/material.dart';

class MySearchField extends StatefulWidget {
  final Function(String)? onSearch;

  const MySearchField({
    super.key,
    this.onSearch,
  });

  @override
  State<MySearchField> createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.10),
              blurRadius: 40,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: TextField(
          onChanged: widget.onSearch,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Search by Title',
            hintStyle: const TextStyle(
              color: Color(0xff95A2B0),
              fontSize: 14,
            ),
            prefixIcon: const Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(Icons.search),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ));
  }
}