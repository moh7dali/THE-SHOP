import 'package:flutter/material.dart';
import 'package:shop/components/mywidget.dart';
import 'package:shop/screens/laptops.dart';
import 'package:shop/screens/pc.dart';
import 'package:shop/screens/phones.dart';
import 'package:shop/screens/tv.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("THE SHOP"),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.cyan, Colors.blue, Colors.pink.shade100]),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(201, 240, 228, 1),
                          Color.fromRGBO(160, 181, 235, 1)
                        ]),
                        borderRadius: BorderRadius.circular(40)),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          "All electronics in one place",
                          style: GoogleFonts.combo(fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "THE SHOP",
                          style: GoogleFonts.openSans(
                              fontSize: 40, color: Colors.red.shade800),
                        )
                      ],
                    ),
                  ),
                  Mywidget(
                      "https://www.zdnet.com/a/img/resize/ec0328404dc107f56a474cdc9241011babea14de/2021/12/22/0205bc00-a8ad-4b05-9cbd-63c143002bfc/best-phones.png?auto=webp&fit=crop&height=675&width=1200",
                      "Phones",
                      Color.fromRGBO(253, 168, 46, 1), () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Phones();
                      },
                    ));
                  }),
                  Mywidget(
                      "https://media.wired.com/photos/5fb2cc575c9914713ead03de/master/w_1920,c_limit/Gear-Apple-MacBook-Air-top-down-SOURCE-Apple.jpg",
                      "Laptops",
                      Color.fromRGBO(50, 18, 184, 1), () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Laptops();
                      },
                    ));
                  }),
                  Mywidget(
                      "https://media.wired.co.uk/photos/606dbac985fac47146cccb87/master/w_1600%2Cc_limit/9.jpg",
                      "Tv",
                      Color.fromRGBO(181, 255, 225, 1), () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Tv();
                      },
                    ));
                  }),
                  Mywidget(
                      "https://zula.sg/wp-content/uploads/2021/09/Aftershock-Bubble-tea-PC-1200x900.jpg",
                      "PC",
                      Color.fromRGBO(226, 178, 235, 1), () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Pc();
                      },
                    ));
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
