import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_application_1/Screens/AddScreen.dart';
import 'package:flutter_application_1/Screens/NewRecipe.dart';
import 'package:flutter_application_1/Screens/RecipeScreen.dart';
import 'package:flutter_application_1/Widgets/MainHome.dart';
import 'package:provider/provider.dart';
import 'Models/ProviderNewRecipe.dart';
import 'Models/ProviderRec..dart';
import 'Models/RecipesList.dart';
import 'Screens/AddNewForm.dart';
import 'Screens/MemeHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ct) => ProviderRec(),
      child: ChangeNotifierProvider(
        create: (ct) => NewRecs(),
        child: ChangeNotifierProvider(
          create: (ct) => RecipesLists(),
          child: MaterialApp(
            title: 'MemeKetchin',
            theme: ThemeData(
              primarySwatch: Colors.pink,
            ),
            home: MemeHome(),
            debugShowCheckedModeBanner: false,
            routes: {
              RecipeScreen.yasir: (context) => RecipeScreen(),
              MainHome.yasir: (context) => MainHome(),
              AddScreen.yasir: (context) => AddScreen(),
              NewRecipe.yasir: (context) => NewRecipe(),
              // AddNewForm.yasir: (context) => AddNewForm(),
            },
          ),
        ),
      ),
    );
  }
}
