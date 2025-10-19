import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('second'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/133844674172302216.jpg'),
              Text(name,
              style: TextStyle(
                fontSize: 55
              )),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, child: const Text('Next to'),
              )
            ],
          )
        )
    );
  }
}
