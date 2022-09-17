import 'dart:math';

import 'package:first/BmiResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {

  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale = true;
  double height = 120;
  int weight =40;
  int age =18;
  var name =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator',
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0
            ),
            child: Container(
              width: 350,
              height:40,
              decoration: BoxDecoration(
                  color: Colors.grey[150],
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: TextFormField(
                onFieldSubmitted:(String value){
                  print(value);
                },
                controller: name,
                decoration:
                InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.perm_contact_cal),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                     left: 25.0,
                      right: 25.0,
                      top: 20.0,
                      bottom : 15.0
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(image: AssetImage('images/Male.png'),
                                      height: 80.0,
                                      width: 80.0,
                                    ),
                                    SizedBox(
                                      height:15.0 ,
                                    ),
                                    Text('MALE',
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: isMale ? Colors.blue : Colors.grey[400]
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(

                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(image: AssetImage('images/Female.png'),
                                      height: 80.0,
                                      width: 80.0,
                                    ),
                                    SizedBox(
                                      height:15.0 ,
                                    ),
                                    Text('FEMALE',
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: !isMale ? Colors.blue : Colors.grey[400]
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('HEIGHT',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text('${height.round()}',
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w900

                                  ),
                                ),
                                Text('CM',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold

                                  ),
                                )
                              ],
                            ),
                            Slider(value: height,
                                max: 220.0,
                                min: 80.0,
                                onChanged: (value)
                                {
                                  setState(() {
                                    height=value;
                                  });

                                }
                            )
                          ],
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 20.0
                    ),
                    child: Row(

                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[400]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                vertical: 10.0
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('WEIGHT',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text('${weight}',
                                    style: TextStyle(
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900

                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                        child:
                                        Icon(Icons.remove),
                                        mini: true,
                                        heroTag: 'weight--',
                                      ),
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                        child:
                                        Icon(Icons.add),
                                        mini: true,
                                        heroTag: 'weight++',
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey[400]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                vertical: 10.0

                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('AGE',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text('${age}',
                                    style: TextStyle(
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900

                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          age--;
                                        });

                                      },
                                        child:
                                        Icon(Icons.remove),
                                        mini: true,
                                        heroTag: 'age--',
                                      ),
                                      FloatingActionButton(onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      },
                                        child:
                                        Icon(Icons.add),
                                        mini: true,
                                        heroTag: 'age++',
                                      )
                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    height: 41.0,
                    child: MaterialButton(
                      height: 30.0,
                      onPressed: (){
                        var result = weight / pow(height / 100,2);
                        print(result.round());
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>BmiResult(
                              age: age,
                              isMale: isMale,
                              result: result.round(),
                              weight: weight,
                              height: height,
                              name: name,
                            )
                        )

                        );
                      },
                      child: Text('CALCULATE',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
