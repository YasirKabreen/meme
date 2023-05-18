import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/RecipeScreen.dart';
import 'package:provider/provider.dart';

import '../Models/RecipesList.dart';

class GridViewBox extends StatelessWidget {
  final int index;
  //final String title;
  // final List description;
  // final String image;
  // final double star;
  // final double duration;
  // final List uses;

  GridViewBox({required this.index
      //required this.title,
      // required this.description,
      // required this.image,
      // required this.star,
      // required this.duration,
      // required this.uses,
      });
  void newRecipe(context) {
    Navigator.of(context).pushNamed(RecipeScreen.yasir, arguments: index);
  }

  @override
  Widget build(BuildContext context) {
    final RecList = Provider.of<RecipesLists>(context);
    final List<RecipesList> y = RecList.recipe;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      child: GridTile(
        child: GestureDetector(
            onTap: () => newRecipe(context),
            child: Image.asset(y[index].image, fit: BoxFit.cover)),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          // leading: IconButton(
          //   onPressed: () {},
          //   color: Colors.orange[900],
          //   icon: Icon(
          //     Icons.star,
          //   ),
          // ),
          title: Text(
            y[index].title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // trailing: IconButton(
          //   onPressed: () {},
          //   color: Colors.orange[900],
          //   icon: Icon(
          //     Icons.access_time_outlined,
          //   ),
          // ),
        ),
      ),
    );
  }
}
