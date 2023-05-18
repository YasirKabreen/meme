import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/RecipesCat.dart';

import 'RecipesList.dart';

class ProviderRec with ChangeNotifier {
  // ignore: prefer_final_fields
  List<RecipesCat> _proRec = [
    RecipesCat(
      title: 'List 1',
      col: Colors.red,
    ),
    RecipesCat(
      title: 'List 2',
      col: Colors.blue,
    ),
    RecipesCat(
      title: 'List 3',
      col: Colors.purple,
    ),
    RecipesCat(
      title: 'List 4',
      col: Colors.deepOrange,
    ),
    RecipesCat(
      title: 'List 5',
      col: Colors.deepOrangeAccent,
    ),
    RecipesCat(
      title: 'List 6',
      col: Colors.deepPurple,
    ),
    RecipesCat(
      title: 'List 7',
      col: Colors.deepPurpleAccent,
    ),
    RecipesCat(
      title: 'List 8',
      col: Colors.green,
    ),
    RecipesCat(
      title: 'List 9',
      col: Colors.yellow,
    )
  ];

  List<RecipesCat> get proRec {
    return [..._proRec];
  }
}
