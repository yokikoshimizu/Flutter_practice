import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Container(
                height: 50,
                child: Center(child: Text('Entry ${entries[index]}')),
              ),
            );
          },
      ),
    );
  }
}
