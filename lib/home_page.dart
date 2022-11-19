import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome, Abdul!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Shakes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: "Search",
                    contentPadding: EdgeInsets.only(left: 10),
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.brown,
                        size: 30,
                      ),
                    )),
              ),
            ),

// * side bar and shakes items
            Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // * side navBar
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .7,
                        // color: Colors.black,
                        width: 200,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Stack(
                            children: [
                              ListView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (BuildContext context, int index) {
                                  List<String> _list = [
                                    "Shakes",
                                    "Coffee",
                                    "Mochtials",
                                    "Cocktails"
                                  ];
                                  return Transform.rotate(
                                    angle: pi * 1.5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 60,
                                          // width: 100,
                                          margin: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(.3),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              _list[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  overflow:
                                                      TextOverflow.visible,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Positioned(
                                right: 50,
                                top: 60,
                                // bottom: 10,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 450,
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // * items list
                Column(
                  children: [
                    // Container(
                    //   height: 200,
                    //   width: 200,
                    //   color: Colors.white,
                    // ),
                    SizedBox(
                        height: 600,
                        width: 200,
                        child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 220,
                                      width: 220,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(300),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                        color: Colors.white,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 200,
                                              child: Image.network(
                                                  "https://www.pngkey.com/png/full/970-9704861_ice-cream-shake-png.png"),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20, right: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Icon(
                                                      Icons.favorite_outline,
                                                      color: Colors.brown,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 80,
                                                    child: Text(
                                                      "Mix Shake",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          color: Colors.brown,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 80,
                                                    child: Text(
                                                      "\$342",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          color: Colors.brown,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            })))
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
