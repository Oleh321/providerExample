import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example002/model/person.dart';
import 'package:provider_example002/provider/edit_person_provider.dart';
import 'package:provider_example002/provider/view_person_provider.dart';
import 'package:provider_example002/ui/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final person = Person('Oleh', 24);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ViewPersonProvider(person)),
        ChangeNotifierProvider(create: (_) => EditPersonProvider(person))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}