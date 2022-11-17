// linking the files by importing them
import 'package:flutter/material.dart';
import 'package:menu_app/items.dart';
import 'package:menu_app/model/dish.dart';

class Menu extends StatelessWidget {
  Menu({super.key}); // constructor

  // defining a list that carry the name and path of each item
  var dishes = [
    Dish(name: "Biryani", imagePath: "assets/biryani.jpg"),
    Dish(name: "Burger", imagePath: "assets/burger.jpg"),
    Dish(name: "Pasta", imagePath: "assets/pasta.jpg"),
    Dish(name: "Pizza", imagePath: "assets/pizza.jpg"),
    Dish(name: "Sushi", imagePath: "assets/sushi.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MENU",
        ),
      ),
      // making  cust widget
      body: ListView.builder(
        // list view is used so the user can scrol the screen
        itemCount: dishes.length,
        itemBuilder: ((context, index) {
          return Items(dish: dishes[index]);
        }),
      ),
    );
  }
}
