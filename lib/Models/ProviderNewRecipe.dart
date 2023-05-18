import 'package:flutter/cupertino.dart';

class NewRec {
  final String title;
  final String image;
  final List<String> quantities;
  final List<String> uses;
  NewRec({
    required this.image,
    required this.quantities,
    required this.title,
    required this.uses,
  });
}

class NewRecs with ChangeNotifier {
  List<NewRec> _recItems = [
    NewRec(
      image: 'lib/assets/RecImage/1.jpeg',
      title: 'First',
      quantities: [
        '40 kg',
        '34 km',
        '90 ml',
      ],
      uses: [
        '1:do this',
        '2:do that',
        '3:do any',
      ],
    ),
    NewRec(
      image: 'lib/assets/RecImage/2.jpeg',
      title: 'Second',
      quantities: [
        '40 kg',
        '34 km',
        '90 ml',
      ],
      uses: [
        '1:do this',
        '2:do that',
        '3:do any',
      ],
    ),
    NewRec(
      image: 'lib/assets/RecImage/3.jpeg',
      title: 'Third',
      quantities: [
        '40 kg',
        '34 km',
        '90 ml',
      ],
      uses: [
        '1:do this',
        '2:do that',
        '3:do any',
      ],
    ),
  ];
  List<NewRec> get recItems {
    return [..._recItems];
  }
}
