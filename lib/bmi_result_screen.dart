import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  late int age;
  late double height;
  late int weight;
  late bool isMale;
  late double result;
  BmiResultScreen({
    required this.age,
    required this.height,
    required this.weight,
    required this.isMale,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 11, 69, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(11, 11, 69, 1),
        title: const Text(
          'BMI Result',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(50),
            width: double.infinity,
            // height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF002952),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gender: ${isMale ? 'Male' : 'Female'}',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Age: $age',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Height: ${height.toInt()}',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Weight: $weight',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'BMI: ${result.toInt()}',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
