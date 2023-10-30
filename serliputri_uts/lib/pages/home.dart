import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:serliputri_uts/pages/history.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS UTS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(title: 'Home'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => HomePageLink();
}

class HomePageLink extends State<HomePage> {
  List<ImageProvider> itemImage = [
    NetworkImage(
        "https://cdn.linkaja.com/website/posts/July2022/1657881071-HEADER%20BANNER%20592x342.jpg"),
    NetworkImage(
        'https://cdn.linkaja.com/website/posts/March2023/1679071451-ZISWAF-RE.jpg'),
    NetworkImage(
        'https://id.tanamduit.com/wp-content/uploads/2021/02/promo-reksa-dana-pakai-linkaja-banner-apps.png'),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://cdn.dribbble.com/users/34919/screenshots/1615729/attachments/251132/HeroIllustration_Progress7.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter, 
              ),
          ),
          child: Column(
            children: [
              Row(
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
              Container(
                width: 380,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 222, 41, 28),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hi, SERLI PUTRI MAHARANI',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Your Balance'),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Rp 10.184',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 222, 41, 28),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: const Icon(
                                          Icons.arrow_right_alt,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Bonus Balance'),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      const Text(
                                        '0',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 222, 41, 28),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: const Icon(
                                          Icons.arrow_right_alt,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 10),
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 206, 206, 206))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonBar(
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.account_balance_wallet_outlined,
                              size: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: const Text(
                                'TopUp',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.send_outlined,
                              size: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: const Text(
                                'Send Money',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.airplane_ticket_outlined,
                              size: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: const Text(
                                'Ticket Code',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.dashboard_outlined,
                              size: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: const Text(
                                'See All',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.phone_android,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Pulsa/Data',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.flash_on,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Electricity',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.local_hospital,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'BPJS',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.gamepad_outlined,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'mgames',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.tv,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Cable TV\n & Internet',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.water_drop,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'PDAM',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.card_membership,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Kartu Uang\n Elektronik',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonBar(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.more_horiz_sharp,
                            size: 30,
                            color: const Color.fromARGB(255, 222, 41, 28),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'More',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    child: CarouselSlider(
                      items: [
                        for (int i = 0; i < itemImage.length; i++)
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                left: 10, right: 10, top: 30, bottom: 15),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: itemImage[i],
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 2.5),
                                ),
                              ],
                            ),
                          )
                      ],
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              print(reason.toString());
                              currentIndex = index;
                            });
                          },
                          autoPlay: true),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 125, bottom: 50),
                    child: Align(
                      child: Row(
                        children: [
                          for (int i = 0; i < itemImage.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: 9,
                                width: 9,
                                decoration: BoxDecoration(
                                  color: currentIndex == i
                                      ? Colors.red
                                      : const Color.fromARGB(
                                          255, 180, 180, 180),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 181, 181, 181)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
