import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/ProviderNewRecipe.dart';
//import 'package:google_fonts/google_fonts.dart';

class NewRecipe extends StatelessWidget {
  static const yasir = 'NewRecpie';
  const NewRecipe({Key? key}) : super(key: key);
  @override
  Widget BuildText(BuildContext ctx, String tx) => ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.pink,
          padding: EdgeInsets.all(8),
          height: 60,
          width: 200,
          child: Center(
            child: Card(
              color: Colors.pink,
              elevation: 10,
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
      );
  @override
  Widget build(BuildContext context) {
    final xx = ModalRoute.of(context)?.settings.arguments as int;
    final ProvRec = Provider.of<NewRecs>(context);
    final x = ProvRec.recItems;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(x[xx].title)),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            color: Colors.transparent,
            height: 300,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                x[xx].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          BuildText(context, 'المقادير'),
          Container(
            margin: EdgeInsets.all(15),
            height: 40,
            width: 300,
            child: Text(x[xx].quantities[0]),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 40,
            width: 300,
            child: Text(x[xx].quantities[1]),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 40,
            width: 300,
            child: Text(x[xx].quantities[2]),
          ),
          BuildText(context, 'طريقة التحضير'),
          Container(
            margin: EdgeInsets.all(15),
            height: 40,
            width: 300,
            child: Text(x[xx].uses[0]),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 40,
            width: 300,
            child: Text(x[xx].uses[1]),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 40,
            width: 300,
            child: Text(x[xx].uses[2]),
          ),
        ],
      )),
    );
  }
}
