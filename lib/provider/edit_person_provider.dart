import 'package:flutter/cupertino.dart';
import 'package:provider_example002/model/person.dart';

class EditPersonProvider extends ChangeNotifier {
  final Person person;

  EditPersonProvider(this.person);

  void increaseAge(){
    person.age++;
    notifyListeners();
  }

}