import 'package:flutter/material.dart';
import 'package:flutter_web/fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0; //membuat pengkondisian

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String Title, required int Index}) {
      return InkWell(
        //inkwell untuk state management
        onTap: () {
          setState(() {
            selectedIndex = Index;
          });
        },

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Title,
              style: Index == selectedIndex ? SubTitle : SecTitle,
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Index == selectedIndex
                    ? Color(0xffFE9980)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

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
                              navItem(Title: 'Guides', Index: 0),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              navItem(Title: 'Pricing', Index: 1),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              navItem(Title: 'Team', Index: 2),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              navItem(Title: 'Stories', Index: 3),
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
