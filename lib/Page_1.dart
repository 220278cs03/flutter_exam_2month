import 'package:flutter/material.dart';

import 'Page_2.dart';

class Page_1 extends StatefulWidget {
  const Page_1({Key? key}) : super(key: key);

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('first_page.png'), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 97, vertical: 109),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.2),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.55),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Image.asset('building.png'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 11),
                  child: Text("Peshot",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 46,
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.center),
                ),
                const Text(
                  "Welcome to peshot",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Book easy and cheap hotels only on Peshot",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Page_2()));
      },
    );
  }
}
