import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/ProviderNewRecipe.dart';
import 'AddNewForm.dart';
import 'NewRecipe.dart';

class AddScreen extends StatefulWidget {
  static const yasir = 'AddScreen';
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    final ProvRec = Provider.of<NewRecs>(context);
    final x = ProvRec.recItems;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Recipes"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 60,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 500,
                  width: 350,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemBuilder: ((context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Colors.white,
                          child: Dismissible(
                            key: ValueKey<int>(index),
                            background: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    //crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                      Text(
                                        ' مسح ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textDirection: TextDirection.rtl,
                                      ),
                                    ],
                                  ),
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            child: ListTile(
                              horizontalTitleGap: 10,
                              // leading: SizedBox(
                              //   width: 200,
                              // ),
                              trailing: CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue,
                                backgroundImage: AssetImage(x[index].image),
                              ),
                              title: Text(
                                x[index].title,
                                textDirection: TextDirection.rtl,
                              ),
                              subtitle: Text(
                                (index + 1).toString(),
                                textDirection: TextDirection.rtl,
                              ),
                              onTap: () => theNewRecipe(context, index),
                            ),
                          ),
                        );
                      }),
                      itemCount: x.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  addNew(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'اضافة وصفة جديدة',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void theNewRecipe(BuildContext context, int index) {
    Navigator.of(context).pushNamed(NewRecipe.yasir, arguments: index);
  }

  void addNew(BuildContext context) {
    //Navigator.of(context).pushNamed(AddNewForm.yasir);
  }
}
