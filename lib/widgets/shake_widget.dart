import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../details_page.dart';

class ShakeWidget extends StatelessWidget {
  const ShakeWidget({
    Key? key,
    required this.shakes,
    required this.shakesImg,
    required this.price,
  }) : super(key: key);

  final String shakes;
  final String shakesImg;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
        child: Stack(
          children: [
            Center(
              child: SlideInRight(
                duration: Duration(milliseconds: 100),
                child: Container(
                  height: 220,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.redAccent.withOpacity(.4),
                          blurRadius: 10,
                          spreadRadius: 10,
                          offset: Offset(3, 5)),
                    ],
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("tabbed");
                      },
                      child: SizedBox(
                        height: 200,
                        width: 100,
                        child: ZoomIn(
                          delay: Duration(milliseconds: 100),
                          child: Image.asset(
                            shakesImg,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
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
                              shakes,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              "\$${price}",
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
