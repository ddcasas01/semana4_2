import 'package:flutter/material.dart';
import 'dart:math';

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
  double result = 0.0;
  String result1="";
  String result2="";
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
              height: 120.0,
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
                min: 2.0,
                max: 120.0,
                activeColor: Colors.deepOrange,
                onChanged: (double value) {
                  valueSlider2 = value;
                  print(value);
                  setState(() {});
                }),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      result = valueSlider2 / pow(valueSlider / 100, 2);
                      if(result<18.5) {
                        result1="Bajo Peso";
                        result2="Alimentate mejor";
                        print("Bajo Peso");
                      } else if (result<25){
                        result1="Peso Normal";
                        result2="Esta todo bien";

                      }else{
                        result1="Sobrepeso";
                        result2="Deberias hacer ejercicio";
                      }
                      setState(() {});
                    },
                    child: const Text("Calcular"))),
            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                    ),
                    const Text(
                      "Resultado:",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 4.0),
                     Text(
                      result1, textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0,fontFamily: "Poppins_ExtraBold.ttf",color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${result.toStringAsFixed(2)}",
                      style: const TextStyle(
                          fontFamily: "Poppins-ExtraBold.ttf",
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      result2, textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16.0,fontFamily: "Poppins_ExtraBold.ttf"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
