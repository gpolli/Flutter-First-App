import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Daily_Status extends StatelessWidget {
  double calculateBaselMetabolicRate() {
    String sex = 'male';
    int age = 27;
    // Kg
    int weight = 70;
    // cm
    int height = 175;

    switch (sex) {
      case 'male':
        return (10 * weight) + (6.25 * height) - (5 * age) + 5;
      case 'female':
        return (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My daily status'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        backgroundColor: Colors.grey[300],
        body: Column(children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  'Ciao Gabriele',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                LinearPercentIndicator(
                  linearGradient: LinearGradient(
                    colors: [Colors.green, Colors.yellow],
                  ),
                  lineHeight: 14.0,
                  percent: 0.7,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(height: 8),
                Row(children: [
                  Text('998'),
                  Text(' / ' + calculateBaselMetabolicRate().toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ], mainAxisAlignment: MainAxisAlignment.end),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          ),
          Container(
            child: Column(
              children: [
                Card(
                    child: ExpansionTile(
                  leading: Icon(Icons.album, size: 50),
                  title: Text('Colazione'),
                  subtitle: Text('sottotitolo'),
                  children: [
                    ListTile(
                      title: Text('Latte'),
                    )
                  ],
                )),
                SizedBox(height: 4),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(Icons.album, size: 50),
                          title: Text('Pranzo'),
                          subtitle: Text('sottotitolo')),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                          leading: Icon(Icons.album, size: 50),
                          title: Text('Cena'),
                          subtitle: Text('sottotitolo')),
                    ],
                  ),
                )
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          ),
        ], crossAxisAlignment: CrossAxisAlignment.stretch));
  }
}
