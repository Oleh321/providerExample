import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example002/provider/edit_person_provider.dart';
import 'package:provider_example002/provider/view_person_provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ViewPersonProvider, EditPersonProvider>(
      builder: (context, _viewPersonProvider, _editPersonProvider, child) =>
          Scaffold(
        appBar: AppBar(title: Text('Person')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_viewPersonProvider.person.name,
                  style: TextStyle(fontSize: 24)),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(_viewPersonProvider.person.age.toString(),
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _editPersonProvider.increaseAge(),
        ),
      ),
    );
  }
}
