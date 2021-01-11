import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            IconButton(
                icon: Icon(Icons.translate),
                iconSize: 30.0,
                onPressed: () {}
            ),
            Spacer(),
            Text(
              "Scanners",
              style: TextStyle(
                fontSize: 28.0
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.delete),
              iconSize: 30.0,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.map),
              iconSize: 30.0,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
