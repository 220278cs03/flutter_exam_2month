import 'package:flutter/material.dart';
import 'package:imtihon_2_oy/Last_Page.dart';

import 'models/mymodel.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<MyModel> listOfModels = [
    MyModel(
        city: 'Arab',
        subcity: 'Dubai',
        city_photo:
            'https://media-cdn.tripadvisor.com/media/photo-s/1b/d2/eb/6a/beach.jpg',
        country: 'Japan',
        country_photo:
            'https://peakvisor.com/photo/Japanese-Mountains-Mount-Fuji.jpg',
        hotel_photo:
            'https://i.pinimg.com/originals/13/bf/10/13bf106644f9861916514ac6be64d468.jpg',
        hotel_name: 'Hotel Burj Al Arab',
        hotel_location: 'Dubai - Uni Emirat Arab',
        hotel_oriyenter: '(999mm) Umm Suqeim 3',
        hotel_cost: '\$ 9.999.999',
        hotel_star_yes: 7,
        hotel_start_no: 0),
    MyModel(
        city: 'America',
        subcity: 'Los Angeles',
        city_photo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3CIC-DG-UUsyamL3ZQ6LX9e7nUllqPFQfgXLPoSWVs0DKx3C5UAiLfj4u1NKnP0ZvGQU&usqp=CAU',
        country: "France",
        country_photo:
            'https://media.istockphoto.com/id/1185953092/photo/the-main-attraction-of-paris-and-all-of-europe-is-the-eiffel-tower-in-the-rays-of-the-setting.jpg?s=612x612&w=0&k=20&c=ZneUFVlR5TPCooxRV1rldUAadqLxZEvOoyVCOrtpcRQ=',
        hotel_photo:
            'https://phgcdn.com/images/uploads/historichotels/homepage/mastheads/1600x900-St.Louis-Union-Station-Home-Page-Masthead.jpg',
        hotel_name: 'Union Station Hotel',
        hotel_location: 'St. Louis, MO 63103, Amerika Serikat',
        hotel_oriyenter: '(902mm) 1820 Market St',
        hotel_cost: '\$ 285',
        hotel_star_yes: 4,
        hotel_start_no: 1),
    MyModel(
        city: "Turkey",
        subcity: 'Istanbul',
        city_photo:
            'https://www.travelanddestinations.com/wp-content/uploads/2019/06/Istanbul-skyline.jpg',
        country: 'Turkey',
        country_photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj2bu6WlQpVdPsutMr4Z9MYaACVFawtUxKZA-SvxGAJ2w5xo9JXoHZkHxUs7E4WLSCE3E&usqp=CAU',
        hotel_photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOlru1FopXxFs47m0QMcPkFTzu20eVVDfRSmgSln7KM-PJKou90qwU_sUcuWLAqkZovLk&usqp=CAU',
        hotel_name: 'Mandarin Oriental',
        hotel_location: 'Bang Rak, Bangkok 10500, Thailand',
        hotel_oriyenter: '(759mm) 48 Oriental Ave',
        hotel_cost: '\$ 499',
        hotel_star_yes: 3,
        hotel_start_no: 2)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 441,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('home.png'), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 28, left: 30, right: 30, bottom: 125),
                  child: Column(
                    children: [
                      Row(children: [
                        Spacer(),
                        Container(
                          height: 43,
                          width: 43,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('avatar_1.png')),
                              shape: BoxShape.circle),
                        )
                      ]),
                      Spacer(),
                      Row(children: [
                        Container(
                            width: 161,
                            child: Text(
                              "Where are you going next?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                            )),
                        Spacer()
                      ])
                    ],
                  ),
                ),
              ),
              Expanded(
                 child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 141,
                        ),
                        Text(
                          "Recommended List",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 33,
                        ),
                        Container(
                          height: 188,
                          child: ListView.builder(
                              itemCount:  listOfModels.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 188,
                                  width: 155,
                                  margin: EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 4),
                                            spreadRadius: 0,
                                            blurRadius: 4,
                                            color: Color(0xff000000)
                                                .withOpacity(0.2))
                                      ]),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                        image: DecorationImage(image: NetworkImage(listOfModels[index].city_photo),fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 9.0, left: 9, bottom: 13),
                                        child: Column(
                                          children: [
                                            Text(
                                              listOfModels[index].city,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              listOfModels[index].subcity,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Text("Popular Destination",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 33,
                        ),
                        SizedBox(
                          height: 188,
                          child: ListView.builder(
                            itemCount: listOfModels.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: 188,
                                    width: 291,
                                    margin: EdgeInsets.only(right: 22),
                                    padding: EdgeInsets.only(top: 11, left: 18),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        color: Colors.yellow,
                                    image: DecorationImage(image: NetworkImage(listOfModels[index].country_photo), fit: BoxFit.cover)),
                                    child: Text(
                                      listOfModels[index].country,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ));
                              }),
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Text('Best Deals',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                            itemCount: listOfModels.length,
                              padding: EdgeInsets.only(right: 30, top: 20),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Container(
                                    height: 134,
                                    margin: EdgeInsets.only(bottom: 20),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 134,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft: Radius.circular(20)),
                                          image: DecorationImage(image: NetworkImage(listOfModels[index].hotel_photo), fit: BoxFit.cover)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listOfModels[index].hotel_name,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                listOfModels[index].hotel_location,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 9),
                                              ),
                                              Spacer(),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.location_on,
                                                            color:
                                                                Color(0xff00CEC9),
                                                            size: 15,
                                                          ),
                                                          Text(
                                                            listOfModels[index].hotel_oriyenter,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight.w400,
                                                                fontSize: 9),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Row(
                                                        children: [
                                                          for (int i = 0;
                                                              i < listOfModels[index].hotel_star_yes;
                                                              i++)
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Color(0xff00CEC9),
                                                              size: 15,
                                                            ),
                                                          for (int i = 0;
                                                          i < listOfModels[index].hotel_start_no;
                                                          i++)
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                              Color(0xffDFE6E9),
                                                              size: 15,
                                                            )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 19,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        listOfModels[index].hotel_cost,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14),
                                                      ),
                                                      Text(
                                                        'Per Night',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 10),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> LastPage(model: listOfModels[index])));
                                  },
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 343,
            left: 30,
            child: Container(
              height: 210,
              width: 354,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: Color(0xff000000).withOpacity(0.25))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.only(
                                top: 16, bottom: 16, left: 22),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff000000).withOpacity(0.5),
                            ),
                            hintText: "Seacrh",
                            hintStyle: TextStyle(
                                color: Color(0xff000000).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                color: Color(0xff000000).withOpacity(0.25))
                          ]),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Flight Date',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            Text(
                              '13 Jul - 18 Jul',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 42,
                          width: 1,
                          color: Color(0xffDFE6E9),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Number of Person',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            Text(
                              '1 Room - 2 Person',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xff00CEC9),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                color: Color(0xff000000).withOpacity(0.25))
                          ],
                          borderRadius:
                              BorderRadius.all(Radius.circular(30))),
                      child: Center(
                        child: Text(
                          "Today's Promo",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff00CEC9),
        unselectedItemColor: Color(0xff000000).withOpacity(0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    ));
  }
}
