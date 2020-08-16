import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Text('Hello world'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza, color: Colors.white),
              title: Text('Daily Status',
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.white),
              title: Text('School',
                  style: TextStyle(
                    color: Colors.white,
                  ))),
        ],
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}
