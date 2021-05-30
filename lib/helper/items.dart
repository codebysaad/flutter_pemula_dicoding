import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visit_kudus/helper/models.dart';

class Items extends StatelessWidget{
  final int index;
  final Models models;
  final void Function(Models) onClick;

  Items(this.index, this.models, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, left: 16, right: 16),
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: new Border.all(
                  color: models.color,
                  width: 1.5,
                ),
                image: DecorationImage(
                  image: AssetImage(models.img),
                  fit: BoxFit.cover
                ),
              ),
            ),
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    models.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    child: Text(models.shortDesc, style: TextStyle(fontStyle: FontStyle.italic),),
                  )
                ],
              ),
            )),
          ],
        ),
        onTap: (){
          onClick(models);
        },
      )
    );
  }
}