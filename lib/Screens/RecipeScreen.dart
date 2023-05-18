import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/RecipesList.dart';
import '../Widgets/MainHome.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);
  static const yasir = 'RecipeScreen';

  @override
  Widget BuildText(BuildContext ctx, String tx) => ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(20),
          height: 150,
          width: 300,
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Theme.of(ctx).primaryColor,
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                child: Text(
                  tx,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    final RecList = Provider.of<RecipesLists>(context);
    final List<RecipesList> y = RecList.recipe;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(y[index].title)),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            color: Colors.transparent,
            height: 400,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                y[index].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          BuildText(context, 'المقادير'),
          Container(
            margin: EdgeInsets.all(15),
            height: 300,
            width: 400,
            color: Colors.grey[200],
            child: ListView.builder(
              itemBuilder: (ctx, ix) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      y[index].description[ix],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                    ),
                  )),
                );
              },
              itemCount: y[index].description.length,
            ),
          ),
          BuildText(context, 'طريقة التحضير'),
          Container(
            margin: EdgeInsets.all(15),
            height: 300,
            width: 400,
            color: Colors.grey[200],
            child: ListView.builder(
              itemBuilder: (ctx, ix) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      y[index].uses[ix],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                    ),
                  )),
                );
              },
              itemCount: y[index].uses.length,
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      )),
    );
  }
}
