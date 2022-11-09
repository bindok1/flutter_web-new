import 'package:flutter/material.dart';
import 'package:flutter_web/fonts.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SingleChildScrollView(
          child: Stack(
            //Using a Stack you can position widgets over one another.
            children: [
              Image.asset(
                'assets/Landing Page.png',
                width: MediaQuery.of(context)
                    .size
                    .width, //agar menyesuaikan sesuai widget
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 100),
                  child: Column(
                    children: [
                      //Note : Navigation

                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, //untuk merapikan widget di kiri kanan
                        children: [
                          Image.asset(
                            'assets/logo.png',
                            width: 72,
                            height: 40,
                          ),
                          SizedBox(
                            width: 179,
                          ),

                          //Note : Navigation

                          Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Guides',
                                    style: SubTitle,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 66,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color(0xffFE9980))),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Pricing',
                                    style: SecTitle,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 66,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.transparent)),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Team',
                                    style: SecTitle,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 66,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.transparent)),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Stories',
                                    style: SecTitle,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 66,
                                          height: 2,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.transparent)),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 129,
                          ),
                          Image.asset(
                            'assets/btn.png',
                            width: 163,
                            height: 53,
                          ),
                        ],
                      ),

                      //Note : Content

                      SizedBox(
                        height: 76,
                      ),
                      Image.asset(
                        'assets/ilustrator.png',
                        width: 550,
                      ),

                      //Footer
                      SizedBox(height: 84),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'Assets/Group 2.png',
                            width: 240,
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
