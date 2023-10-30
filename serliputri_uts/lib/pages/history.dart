import 'package:flutter/material.dart';
import 'package:serliputri_uts/pages/HISTORY.dart';
// import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const History());
}

class History extends StatelessWidget {
  const History({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Color myColor = Color.fromRGBO(233, 238, 245, 0);
    return MaterialApp(
      title: 'TUGAS UTS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const HistoryPage(title: 'History'),
    );
  }
}

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key, required this.title});

  final String title;

  @override
  State<HistoryPage> createState() => HistoryLinkAja();
}

class HistoryLinkAja extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          toolbarHeight: 62,
          shadowColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 8),
                alignment: Alignment.center,
                child: Text(
                  "Transaction History",
                  style: TextStyle(
                    fontSize: 23,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.red,
              labelStyle: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                  text: "Pending",
                ),
                Tab(text: "Done"),
              ]),
        ),
        body: TabBarView(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(245, 226, 233, 244),
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://www.linkaja.id/assets/linkaja/img/common/graphic_blank_promo.png",
                    width: 210,
                    height: 210,
                  ),
                  Text(
                    "All transaction is completed!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Any pending transaction will appear in this page",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromARGB(245, 226, 233, 244),
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://assets.kompasiana.com/items/album/2023/06/02/ilustrasi-penggunaan-210621052002-646-64796c844addee25bd6274e2.jpg?t=o&v=740&x=416",
                    width: 210,
                    height: 210,
                  ),
                  Text(
                    "Oops, no transaction yet!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Let's make a transaction using LinkAja and enjoy \n the exciting promos. Are you sure you don't want to?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
