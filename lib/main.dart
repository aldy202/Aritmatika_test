import 'package:aritmatika/aritmatika.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Aritmatika',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int result = 0;
  int numberToCheck = 0;
  bool isOdd = false;

  Aritmatika perhitungan = Aritmatika();

  void addNumbers(int a, int b) {
    setState(() {
      result = perhitungan.addNumbers(a, b);
    });
  }

  void checkOddEven(int number) {
    setState(() {
      numberToCheck = number;
      isOdd = perhitungan.isOdd(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Unit Testing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                addNumbers(5, 7);
              },
              child: Text('Add Numbers'),
            ),
            SizedBox(height: 40),
            Text(
              'Number to Check: $numberToCheck\n${isOdd ? 'GANJIL' : 'GENAP'}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                checkOddEven(9);
              },
              child: Text('Check Odd/Even'),
            ),
          ],
        ),
      ),
    );
  }
}
