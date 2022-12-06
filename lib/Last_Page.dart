import 'package:flutter/material.dart';

import 'models/mymodel.dart';

class LastPage extends StatefulWidget {
  MyModel model;

  LastPage({Key? key, required this.model}) : super(key: key);

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  List<String> hotelPhoto = [
    'assets/hotel1.png',
    'assets/hotel2.png',
    'assets/hotel3.png'
  ];
  bool like = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('blur.png'), fit: BoxFit.cover),
              color: Colors.yellow,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120, left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        like ? Icons.favorite_border : Icons.favorite,
                        color: const Color(0xff00CEC9),
                      ),
                    ),
                    onTap: () {
                      like = !like;
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 74,
                              width: 148,
                              child: Text(
                                widget.model.hotel_name,
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Text(
                              widget.model.hotel_cost,
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              widget.model.hotel_location,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 9),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Icon(Icons.location_on,
                                color: Color(0xff00CEC9)),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              widget.model.hotel_oriyenter,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 9),
                            ),
                            const Spacer(),
                            const Text(
                              'Per Night',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                            color: const Color(0xffDFE6E9)),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Hotel details',
                          style: TextStyle(
                              color: Color(0xff34495E),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'This luxury and well-known hotel overlooking the Chao Phraya river is a 3-minute walk from the nearest ferry stop.',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          '...Read more',
                          style: TextStyle(
                              color: Color(0xff00CEC9),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 156,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 0,
                                    blurRadius: 16,
                                    offset: const Offset(0, 0),
                                    color: const Color(0xff000000)
                                        .withOpacity(0.25))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${widget.model.hotel_star_yes}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Review summary",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            for (int i = 0;
                                                i < widget.model.hotel_star_yes;
                                                i++)
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xff00CEC9),
                                                size: 15,
                                              ),
                                            for (int i = 0;
                                                i < widget.model.hotel_start_no;
                                                i++)
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xffDFE6E9),
                                                size: 15,
                                              )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      height: 8,
                                      color: const Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "4",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 30,
                                      height: 8,
                                      color: const Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "3",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 6,
                                      height: 8,
                                      color: const Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 0,
                                      height: 8,
                                      color: const Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 8,
                                      color: const Color(0xff00CEC9),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Hotel details',
                              style: TextStyle(
                                  color: Color(0xff34495E),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff00CEC9),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: hotelPhoto.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 110,
                                  width: 110,
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.blue,
                                  ),
                                  child: Image.asset(
                                    hotelPhoto[index],
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                            color: const Color(0xffDFE6E9)),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Reviews (33)',
                              style: TextStyle(
                                  color: Color(0xff34495E),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff00CEC9),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                            color: const Color(0xffDFE6E9)),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  margin: const EdgeInsets.only(
                                      right: 9, bottom: 11),
                                  decoration: const BoxDecoration(
                                      color: Colors.blueGrey,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('avatar_1.png'))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Kang Jhon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "3 Hours 43 Minute Ago",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Rating",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0; i < 4; i++)
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xff00CEC9),
                                            size: 15,
                                          ),
                                        for (int i = 0; i < 1; i++)
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffDFE6E9),
                                            size: 15,
                                          )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Text(
                              "The rooms are nice and very tidy. the mattress is soft plus a soft blanket makes sleeping very comfortable",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 11,
                            ),
                            const Text(
                              "Reply",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                color: const Color(0xffDFE6E9)),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  margin: const EdgeInsets.only(
                                      right: 9, bottom: 11),
                                  decoration: const BoxDecoration(
                                      color: Colors.blueGrey,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage("avatar_2.png"),
                                          fit: BoxFit.cover)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Kang Ecap",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "4 Days Ago",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Rating",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0; i < 4; i++)
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xff00CEC9),
                                            size: 15,
                                          ),
                                        for (int i = 0; i < 1; i++)
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffDFE6E9),
                                            size: 15,
                                          )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Text(
                              "I'm very happy with the view that can be seen from inside the hotel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 11,
                            ),
                            const Text(
                              "Reply",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                color: const Color(0xffDFE6E9)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 270,
                        margin: const EdgeInsets.only(bottom: 40),
                        child: Image.asset(
                          'map.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 90,
                          left: 130,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xff00CEC9),
                                shape: BoxShape.circle),
                            child: const Center(
                                child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                            )),
                          ))
                    ],
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.only(
                          left: 54, right: 54, bottom: 48),
                      decoration: const BoxDecoration(
                          color: Color(0xff00CEC9),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: const Center(
                          child: Text(
                        'Reserve Room',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )),
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              child: Container(
                                width: 310,
                                height: 377,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Accepted",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30))),
                                      child: const Center(
                                          child: Text(
                                        "👍",
                                        style: TextStyle(fontSize: 40),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
