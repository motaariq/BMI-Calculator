import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
final int result;
final int age;
bool isMale;
final int weight;
final double height;
var name;
BmiResult(
{
required this.result,
required  this.age,
required this.isMale,
required this.weight,
required this.height,
required this.name,
}
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      title: Text('BMI Result',
      style: TextStyle(
          fontWeight: FontWeight.bold
      ),
    ),
        centerTitle: true,
        leading: IconButton(onPressed: ()
        {
        Navigator.pop(context)  ;
        },
        icon: Icon(Icons.keyboard_arrow_left),
        ),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom : 50.0
              ),
              child: Text('Name : ${name.text}',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Text('Gender : ${isMale?'Male':'Female'}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
            ),
            Text('Age : $age',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('Weight : $weight',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('Height : ${height.round()}',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60.0
              ),
              child: Text('Result : $result',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
