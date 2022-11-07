import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      backgroundColor:Colors.indigo,
      appBar: AppBar(
        title: Text('تطابق الصور'),
        backgroundColor: Colors.indigo[800],
      ),
      body:MyApp(),

    )

  ),);
}
class MyApp extends StatefulWidget {
  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftImageNumber=1;
  int rightImageNumber=1;
  void change () {
    rightImageNumber=Random().nextInt(8)+1;
    leftImageNumber=Random().nextInt(8)+1;
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children :[
        Text(
          leftImageNumber == rightImageNumber ? 'مبروك لقد نجحت' : 'حاول مرة اخرى',
        style: TextStyle(
          fontSize: 42,
          color: Colors.white, 
        ),
        ),
         Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: GestureDetector(
                    onTap: () {
                                setState(() {
                                  change();
                                });
                              },
                    child: Image.asset('tataboq_app_images/image-$leftImageNumber.png'),
                    ),
                ),
                ),
             
              Expanded(
                child: Padding(                  padding: const EdgeInsets.all(30),
                  child: GestureDetector(
                    onTap: () {
                                
                                setState(() {
                                  change();
                                  
                                });
                              },
                    child: Image.asset('tataboq_app_images/image-$rightImageNumber.png'),
                    ),
                ),
                ),
             
            ],
          ),
        
      ]
    );
  }
}
