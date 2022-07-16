import 'package:flutter/material.dart';

class floating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Color.fromARGB(204, 228, 19, 19),
      child: const Icon(
        Icons.favorite,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
