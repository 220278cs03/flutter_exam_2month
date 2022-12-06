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
        country_photo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj2bu6WlQpVdPsutMr4Z9MYaACVFawtUxKZA-SvxGAJ2w5xo9JXoHZkHxUs7E4WLSCE3E&usqp=CAU',
        hotel_photo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOlru1FopXxFs47m0QMcPkFTzu20eVVDfRSmgSln7KM-PJKou90qwU_sUcuWLAqkZovLk&usqp=CAU',
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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('home.png'), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 28, left: 30, right: 30, bottom: 125),
                  child: Column(
                    children: [
                      Row(children: [
                        InkWell(
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Spacer(),
                        Container(
                          height: 43,
                          width: 43,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('avatar_1.png')),
                              shape: BoxShape.circle),
                        )
                      ]),
                      const Spacer(),
                      Row(children: [
                        Container(
                            width: 161,
                            child: const Text(
                              "Where are you going next?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                            )),
                        const Spacer()
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
                        const SizedBox(
                          height: 141,
                        ),
                        const Text(
                          "Recommended List",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 33,
                        ),
                        Container(
                          height: 188,
                          child: ListView.builder(
                              itemCount: listOfModels.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 188,
                                  width: 155,
                                  margin: const EdgeInsets.only(right: 16),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(0, 4),
                                            spreadRadius: 0,
                                            blurRadius: 4,
                                            color: const Color(0xff000000)
                                                .withOpacity(0.2))
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 130,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20)),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    listOfModels[index]
                                                        .city_photo),
                                                fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 9.0, left: 9, bottom: 13),
                                        child: Column(
                                          children: [
                                            Text(
                                              listOfModels[index].city,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 16),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              listOfModels[index].subcity,
                                              style: const TextStyle(
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
                        const SizedBox(
                          height: 38,
                        ),
                        const Text("Popular Destination",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w700)),
                        const SizedBox(
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
                                    margin: const EdgeInsets.only(right: 22),
                                    padding: const EdgeInsets.only(
                                        top: 11, left: 18),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.yellow,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                listOfModels[index]
                                                    .country_photo),
                                            fit: BoxFit.cover)),
                                    child: Text(
                                      listOfModels[index].country,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ));
                              }),
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        const Text('Best Deals',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                              itemCount: listOfModels.length,
                              padding:
                                  const EdgeInsets.only(right: 30, top: 20),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Container(
                                    height: 134,
                                    margin: const EdgeInsets.only(bottom: 20),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 134,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20),
                                                      bottomLeft:
                                                          Radius.circular(20)),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      listOfModels[index]
                                                          .hotel_photo),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listOfModels[index].hotel_name,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                listOfModels[index]
                                                    .hotel_location,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 9),
                                              ),
                                              const Spacer(),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons.location_on,
                                                            color: Color(
                                                                0xff00CEC9),
                                                            size: 15,
                                                          ),
                                                          Text(
                                                            listOfModels[index]
                                                                .hotel_oriyenter,
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 9),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      Row(
                                                        children: [
                                                          for (int i = 0;
                                                              i <
                                                                  listOfModels[
                                                                          index]
                                                                      .hotel_star_yes;
                                                              i++)
                                                            const Icon(
                                                              Icons.star,
                                                              color: Color(
                                                                  0xff00CEC9),
                                                              size: 15,
                                                            ),
                                                          for (int i = 0;
                                                              i <
                                                                  listOfModels[
                                                                          index]
                                                                      .hotel_start_no;
                                                              i++)
                                                            const Icon(
                                                              Icons.star,
                                                              color: Color(
                                                                  0xffDFE6E9),
                                                              size: 15,
                                                            )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 19,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        listOfModels[index]
                                                            .hotel_cost,
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14),
                                                      ),
                                                      const Text(
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => LastPage(
                                                model: listOfModels[index])));
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
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: const Color(0xff000000).withOpacity(0.25))
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
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide.none),
                            contentPadding: const EdgeInsets.only(
                                top: 16, bottom: 16, left: 22),
                            prefixIcon: Icon(
                              Icons.search,
                              color: const Color(0xff000000).withOpacity(0.5),
                            ),
                            hintText: "Seacrh",
                            hintStyle: TextStyle(
                                color: const Color(0xff000000).withOpacity(0.5),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                                color:
                                    const Color(0xff000000).withOpacity(0.25))
                          ]),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Flight Date',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            const Text(
                              '13 Jul - 18 Jul',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 42,
                          width: 1,
                          color: const Color(0xffDFE6E9),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Number of Person',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                            const Text(
                              '1 Room - 2 Person',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color(0xff00CEC9),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                                color:
                                    const Color(0xff000000).withOpacity(0.25))
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Center(
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
        selectedItemColor: const Color(0xff00CEC9),
        unselectedItemColor: const Color(0xff000000).withOpacity(0.5),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'Notification'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    ));
  }
}
