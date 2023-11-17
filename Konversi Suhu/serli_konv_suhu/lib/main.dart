import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double celcius = 0.0;
  double kelvin = 0.0;
  double reamur = 0.0;

  void _convertTemperature() {
    kelvin = celcius + 273.15;
    reamur = celcius * 4 / 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konverter Suhu"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukkan suhu terlebih dahulu';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    celcius = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Suhu dalam Kelvin", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 20),
                        Text("$kelvin", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Suhu dalam Reamur", style: TextStyle(fontSize: 14)),
                        SizedBox(height: 20),
                        Text("$reamur", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(top: 200),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _convertTemperature();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(460, 50),
                  ),
                  child: Text(
                    "Konversi Suhu",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}