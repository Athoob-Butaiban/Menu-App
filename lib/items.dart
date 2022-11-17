// in this file the custom widget happens

// linking the files by importing them
import 'package:flutter/material.dart';

import 'package:menu_app/model/dish.dart';

class Items extends StatelessWidget {
  final Dish dish; // defining dish

  const Items({
    Key? key,
    required this.dish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          dish.imagePath,
          height: 100,
          width: 100,
        ),
        Container(
          padding: EdgeInsets.all(50),
          child: Text(dish.name),
        )
      ],
    );
  }
}
