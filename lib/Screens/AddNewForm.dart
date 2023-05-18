import 'package:flutter/material.dart';

class AddNewForm extends StatelessWidget {
  const AddNewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Form'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            showBottomSheet(
              context: context,
              builder: ((context) => Container()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
