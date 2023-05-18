import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/ProviderRec..dart';
import '../Models/RecipesCat.dart';
import '../Models/RecipesList.dart';
import 'GridViewBox.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);
  static const yasir = 'MainHome';
  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    final ProvRec = Provider.of<ProviderRec>(context);
    final List<RecipesCat> x = ProvRec.proRec;
    final RecList = Provider.of<RecipesLists>(context);
    final List<RecipesList> y = RecList.recipe;
    final int index = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          x[index].title,
          //recipesCat[1].toString(),
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => GridViewBox(index: index
            // title: y[index].title,
            // description: y[index].description,
            // image: y[index].image,
            // duration: y[index].duration,
            // star: y[index].star,
            // uses: y[index].uses,
            ),
        itemCount: y.length,
      ),
    );
  }
}
