import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double valueSlider = 160.0;
  double valueSlider2 = 80.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(fontFamily: "Poppins.Bold"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/image1.png',
              height: 180.0,
            ),
            Text(
              "Height",
              style: TextStyle(fontSize: 16.0, fontFamily: "Poppins.Bold"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  valueSlider.toInt().toStringAsFixed(2),
                  style: TextStyle(fontSize: 25.0, fontFamily: "Poppins.Bold"),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  "cm",
                  style: TextStyle(fontSize: 16.0, fontFamily: "Poppins.Bold"),
                ),
              ],
            ),
            Slider(
                value: valueSlider,
                min: 100.0,
                max: 200.0,
                activeColor: Colors.deepPurple,
                onChanged: (double value) {
                  valueSlider = value;
                  print(value);
                  setState(() {});
                }),
            Text(
              "Weight",
              style: TextStyle(fontSize: 16.0, fontFamily: "Poppins.Bold"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  valueSlider2.toInt().toStringAsFixed(2),
                  style: TextStyle(fontSize: 25.0, fontFamily: "Poppins.Bold"),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  "Kg",
                  style: TextStyle(fontSize: 16.0, fontFamily: "Poppins.Bold"),
                ),
              ],
            ),
            Slider(
                value: valueSlider2,
                min: 0.0,
                max: 120.0,
                activeColor: Colors.deepOrange,
                onChanged: (double value) {
                  valueSlider2 = value;
                  print(value);
                  setState(() {});
                }),

            Slider(
                value: valueSlider2,
                min: 0.0,
                max: 120.0,
                activeColor: Colors.deepOrange,
                onChanged: (double value) {
                  valueSlider2 = value;
                  print(value);
                  setState(() {});
                }),










          ],
        ),
      ),
    );
  }
}
