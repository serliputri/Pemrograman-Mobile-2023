import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/LinkAja.svg/2048px-LinkAja.svg.png',
                      width: 50,
                      height: 50,
                    ),
                    Row(
                      children: [
                        Image.network(
                          'https://cdn.icon-icons.com/icons2/2819/PNG/512/discount_voucher_offert_icon_179540.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 10),
                        Image.network(
                          'https://cdn.icon-icons.com/icons2/2941/PNG/512/heart_icon_183734.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 380,
                height: 180,
                margin: EdgeInsets.only(top: 30),
                child: Card(
                  elevation: 2,
                  color: Colors.redAccent,
                  child: Padding(
                    padding:
                        EdgeInsets.all(16.0), // Adjust the padding as needed
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Hi, SERLI PUTRI MAHARANI',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Card(
                              elevation: 2,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Align(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    'Your Balance \n\t\t\tRp 10.184',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              elevation: 2,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Align(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Text(
                                    'Bonus Balance \n\t\t 0',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    50), // Add spacing between the card and other elements if needed
                            Expanded(
                              child: Container(
                                  // Add additional properties for width, height, margin, etc. as needed
                                  ),
                            ),
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
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
