import 'package:flutter/material.dart';
import 'package:sample/second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('first'),
          ),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                  onChanged: (text){
                  nameText = text;
            },
              ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondPage(nameText),
                        ),
                      );
                    }, child: const Text('Next to'),
                  ),
                ],
              ),
            )
        )
    );
  }
}
