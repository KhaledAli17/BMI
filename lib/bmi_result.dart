
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

  final int age;
  final int result;
  final bool isMale;
  BmiResult(
      {
        required this.isMale,
        required this.age,
        required this.result,
      }
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title:const  Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'} ',style:const  TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              'Age : $age ',style:const  TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              'Result : $result ',style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
