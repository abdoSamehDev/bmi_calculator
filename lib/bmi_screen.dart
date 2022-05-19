import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120;
  int age = 18;
  int weight = 70;
  late double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 11, 69, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(11, 11, 69, 1),
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // tappedColor = Colors.blue;
                          isMale = true;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMale ? Colors.blue : const Color(0xFF002952),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage('assets/images/male-w.png'),
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: isMale ? Colors.white : Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // tappedColor = !isMale ? Colors.blue : Colors.grey[500],;
                          isMale = false;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              !isMale ? Colors.blue : const Color(0xFF002952),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage('assets/images/female-w.png'),
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color:
                                    !isMale ? Colors.white : Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF002952),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.toInt()}',
                          style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      min: 80,
                      max: 220,
                      activeColor: Colors.grey,
                      thumbColor: Colors.red,
                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF002952),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          Text(
                            '${age.toInt()}',
                            style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  heroTag: 'age+',
                                  child: const Icon(Icons.add),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                              const SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                  heroTag: 'age-',
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF002952),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[400],
                            ),
                          ),
                          Text(
                            '${weight.toInt()}',
                            style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  heroTag: 'weight+',
                                  child: const Icon(Icons.add),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                              const SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                  heroTag: 'weight-',
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  result = weight / pow(height.toInt() / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiResultScreen(
                          isMale: isMale,
                          height: height,
                          age: age,
                          weight: weight,
                          result: result,
                        ),
                      ));
                });
              },
              child: const Text(
                'CALCULATE!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
