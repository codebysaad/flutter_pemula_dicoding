import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visit_kudus/helper/models.dart';

class DetailsPage extends StatelessWidget {
  final Models data;

  DetailsPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                'Details',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                data.name,
                style: TextStyle(fontSize: 16),
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data.img), fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment(0.9, 1.6),
                    child: IconButton(
                      icon: Image.asset('assets/images/directions.png'),
                      iconSize: 60,
                      onPressed: () async {
                        if (await canLaunch(data.direction)) {
                        await launch(data.direction);
                        } else {
                        throw 'Url Not Found';
                        }
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                data.name,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 12, right: 12),
                child: Center(
                  child: Text(
                    data.address,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black45,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Description",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              data.desc,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}