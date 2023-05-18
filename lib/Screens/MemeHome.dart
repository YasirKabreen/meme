import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/ProviderRec..dart';
import '../Models/RecipesCat.dart';
import '../Widgets/MainHome.dart';
import 'AddScreen.dart';
import 'DrawerScreen.dart';

class MemeHome extends StatefulWidget {
  const MemeHome({Key? key}) : super(key: key);

  @override
  State<MemeHome> createState() => _MemeHomeState();
}

class _MemeHomeState extends State<MemeHome> {
  // final List<RecipesCat> x = [

  // ];
  Widget buildtitle(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          Card(
            elevation: 10,
            color: Colors.orange[700],
            child: const Text(
              'M',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'emeKitchen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              //fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  void subScreen(BuildContext context, index) {
    Navigator.of(context).pushNamed(MainHome.yasir, arguments: index);
  }

  void addScreen() {
    Navigator.of(context).pushNamed(AddScreen.yasir);
  }

  @override
  Widget build(BuildContext context) {
    final ProvRec = Provider.of<ProviderRec>(context);
    final x = ProvRec.proRec;
    return Scaffold(
      //backgroundColor: Colors.pink[100],
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          InkWell(
              child: Icon(
                Icons.note_add_rounded,
              ),
              onTap: addScreen),
          SizedBox(
            width: 20,
          ),
        ],
        title: buildtitle(context),
      ),
      drawer: DrawerScreen(),
      //body: MainHome(),
      body: GridView.builder(
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            subScreen(context, index);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 150,
                width: 150,
                color: x[index].col,
                child: Center(
                  child: Text(x[index].title),
                ),
              ),
            ),
          ),
        ),
        itemCount: x.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
      ),
    );
  }
}
