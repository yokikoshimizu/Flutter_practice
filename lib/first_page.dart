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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                  onChanged: (text){
                  nameText = text;
            },
              ),
                  ElevatedButton(
                    onPressed: (){
                      //ここのNavigator.pushの中のコードの意味はよくわからない部分があります
                      Navigator.push(
                        context,
                        //builder: (context)という書き方の構造がわかっていません。:はどういう意味なのか気になります
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
