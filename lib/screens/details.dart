import 'package:flutter/material.dart';
import 'package:visit_kudus/helper/models.dart';

class DetailsPage extends StatelessWidget{
  final Models data;

  DetailsPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Details', style: TextStyle(fontSize: 24),),
            Text(data.name, style: TextStyle(fontSize: 16),),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Text(data.name),
      ),
    );
  }
}