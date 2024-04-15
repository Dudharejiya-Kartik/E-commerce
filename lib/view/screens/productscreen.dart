import 'package:ecommerce/Utils/cartlist.dart';
import 'package:ecommerce/Utils/headphones.dart';
import 'package:ecommerce/Utils/productdescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Utils/colors.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _State();
}

class _State extends State<productscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1B1D),
      body: theproducts(context),
    );
  }

  Widget theproducts(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffF4F6F8),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height * 0.02),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              back = true;
                              if (back == true) {
                                switchingscreens[0]['cart'] = 'Add to Cart';
                                carttap = 0;
                                (addtocartimage.length > 0)
                                    ? cartcolor = Colors.amber
                                    : cartcolor = Colors.transparent;
                              }
                              Navigator.of(context).pushNamed('/home');
                            });
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ),
                      ),
                      Stack(children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              // List.generate(addtocartprice.length,
                              //     (index) => fi[index] = addtocartprice[index]);
                              Navigator.of(context).pushNamed('/cart',
                                  arguments: addtocartprice);
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: height * 0.02),
                            child: SvgPicture.asset(
                              'assets/images/Svg/9ecd99fe332ca484fbb9193d5b78c457.svg',
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 17,
                            left: 15,
                            child: Container(
                              height: 15,
                              width: 15,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: cartcolor,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Text(
                                "${addtocartimage.length}",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: (addtocartimage.length == 0)
                                        ? Colors.transparent
                                        : Colors.black),
                              ),
                            ))
                      ]),
                    ],
                  ),
                  Stack(children: [
                    Container(
                      height: 430,
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 410,
                        width: 360,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(190),
                          color: Color(0xff234878),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 406,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(174),
                                color: Color(0xffF4F6F8),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    switchingscreens[0]['image'],
                                    fit: BoxFit.cover,
                                    height: 350,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 397,
                        left: 175,
                        child: Container(
                            height: 22,
                            width: 22,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xffFED168),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Color(0xff11417D),
                                  borderRadius: BorderRadius.circular(50)),
                            ))),
                  ]),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Solo Pro",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.grey.shade800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              switchingscreens[0]['name'],
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: Colors.grey.shade900),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  //colors changer
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              bgc[0] = insidecontainer;
                              bgc[1] = secondcolor;
                              bgc[2] = thirdcolor;
                              bgc[3] = fourthcolor;
                            });
                          },
                          child: colorcontainers(firstcolor, bgc[0])),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              bgc[1] = insidecontainer;
                              bgc[0] = firstcolor;
                              bgc[2] = thirdcolor;
                              bgc[3] = fourthcolor;
                            });
                          },
                          child: colorcontainers(secondcolor, bgc[1])),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              bgc[2] = insidecontainer;
                              bgc[0] = firstcolor;
                              bgc[1] = secondcolor;
                              bgc[3] = fourthcolor;
                            });
                          },
                          child: colorcontainers(thirdcolor, bgc[2])),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              bgc[3] = insidecontainer;
                              bgc[0] = firstcolor;
                              bgc[1] = secondcolor;
                              bgc[2] = thirdcolor;
                            });
                          },
                          child: colorcontainers(fourthcolor, bgc[3])),
                    ],
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 30),
                    color: Colors.transparent,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(description.length,
                            (index) => circleandtext(description[index])),
                      ),
                    ),
                  )
                ]),
              )),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            color: Color(0xff1A1B1D),
            height: 90,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "PRICE :",
                      style: TextStyle(
                          color: Color(0xffcca65a),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$${switchingscreens[0]['price']}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            switchingscreens[0]['cart'] = 'Added to Cart';

                            addtocartimage.add(switchingscreens[0]['image']);
                            addtocartname.add(switchingscreens[0]['name']);
                            addtocartprice.add(switchingscreens[0]['price']);
                            numberofitems.add(switchingscreens[0]['numbers']);

                            (addtocartimage.length > 0)
                                ? cartcolor = Colors.amber
                                : cartcolor = Colors.transparent;
                            checkout = total();
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Color(0xffFED268),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                carttick,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                switchingscreens[0]['cart'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    letterSpacing: -0.5),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}

Color insidecontainer = Colors.white;
Widget colorcontainers(Color color, Color changer) {
  return Container(
      height: 25,
      width: 25,
      margin: EdgeInsets.only(right: 15),
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: changer, borderRadius: BorderRadius.circular(50)),
      ));
}

Widget roundedcontainersandtext() {
  return Container(
    margin: EdgeInsets.only(
      right: 10,
    ),
    height: 5,
    width: 5,
    decoration: BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.circular(100),
    ),
  );
}

Widget circleandtext(String discrip) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      children: [
        roundedcontainersandtext(),
        Text(
          discrip,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              letterSpacing: -0.5,
              color: Colors.grey.shade800),
        )
      ],
    ),
  );
}
