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
            decoration: BoxDecoration(
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
                    child: Icon(
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
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        like ? Icons.favorite_border : Icons.favorite,
                        color: Color(0xff00CEC9),
                      ),
                    ),
                    onTap: (){
                      like = !like;
                      setState(() {

                      });
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
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Text(
                              widget.model.hotel_cost,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              widget.model.hotel_location,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 9),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(Icons.location_on, color: Color(0xff00CEC9)),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              widget.model.hotel_oriyenter,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 9),
                            ),
                            Spacer(),
                            Text(
                              'Per Night',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xffDFE6E9)),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Hotel details',
                          style: TextStyle(
                              color: Color(0xff34495E),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'This luxury and well-known hotel overlooking the Chao Phraya river is a 3-minute walk from the nearest ferry stop.',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '...Read more',
                          style: TextStyle(
                              color: Color(0xff00CEC9),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 156,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 0,
                                    blurRadius: 16,
                                    offset: Offset(0, 0),
                                    color: Color(0xff000000).withOpacity(0.25))
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Review summary",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            for (int i = 0; i < widget.model.hotel_star_yes; i++)
                                              Icon(
                                                Icons.star,
                                                color: Color(0xff00CEC9),
                                                size: 15,
                                              ),
                                            for (int i = 0; i < widget.model.hotel_start_no; i++)
                                              Icon(
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
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      height: 8,
                                      color: Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 30,
                                      height: 8,
                                      color: Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 6,
                                      height: 8,
                                      color: Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 0,
                                      height: 8,
                                      color: Color(0xff00CEC9),
                                    )
                                  ],
                                ),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 25),
                                      child: Icon(
                                        Icons.star,
                                        color: Color(0xff00CEC9),
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      width: 1,
                                      height: 8,
                                      color: Color(0xff00CEC9),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                            itemCount: hotelPhoto.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 110,
                                  width: 110,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.blue,),
                                  child: Image.asset(hotelPhoto[index], fit: BoxFit.cover,),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xffDFE6E9)),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xffDFE6E9)),
                        SizedBox(
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
                                  margin: EdgeInsets.only(right: 9, bottom: 11),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage('avatar_1.png'))),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Rating",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0; i < 4; i++)
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff00CEC9),
                                            size: 15,
                                          ),
                                        for (int i = 0; i < 1; i++)
                                          Icon(
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
                            Text(
                              "The rooms are nice and very tidy. the mattress is soft plus a soft blanket makes sleeping very comfortable",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              "Reply",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffDFE6E9)),
                            SizedBox(
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
                                  margin: EdgeInsets.only(right: 9, bottom: 11),
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      shape: BoxShape.circle, image: DecorationImage(image: AssetImage("avatar_2.png"), fit: BoxFit.cover)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Rating",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0; i < 4; i++)
                                          Icon(
                                            Icons.star,
                                            color: Color(0xff00CEC9),
                                            size: 15,
                                          ),
                                        for (int i = 0; i < 1; i++)
                                          Icon(
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
                            Text(
                              "I'm very happy with the view that can be seen from inside the hotel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Text(
                              "Reply",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                                height: 2,
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffDFE6E9)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 270,
                        margin: EdgeInsets.only(bottom: 40),
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
                            decoration: BoxDecoration(
                                color: Color(0xff00CEC9),
                                shape: BoxShape.circle),
                            child: Center(
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
                      margin: EdgeInsets.only(left: 54, right: 54, bottom: 48),
                      decoration: BoxDecoration(
                          color: Color(0xff00CEC9),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Center(
                          child: Text(
                        'Reserve Room',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )),
                    ),
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              child: Container(
                                width: 310,
                                height: 377,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Accepted", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                    SizedBox(height: 32,),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                      child: Center(child: Text("👍", style: TextStyle(fontSize: 40),)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      );
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
