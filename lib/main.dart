import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.star),
            title: Text('앱제목', style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,

          ),
          body: SizedBox(
            child: TextButton(onPressed: (){},
                child: Icon(Icons.star),),

          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            )
          ),
        )
    );
  }
}
