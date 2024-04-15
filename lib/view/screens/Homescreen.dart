import 'package:ecommerce/Utils/headphones.dart';
import 'package:ecommerce/Utils/productdescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/cartlist.dart';
import '../../Utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF4F6F8),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Column(
            // Main column
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                height: height * 0.12,
                width: width,
                decoration: const BoxDecoration(color: Colors.transparent),
                //app bar made of container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   width: width * 0.043,
                    // ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.025),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/4-dots-removebg.png',
                            // height: 70,
                            width: 20,
                            color: Colors.grey.shade800,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: width * 0.355),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.all_inclusive,
                            size: 50,
                            color: Colors.grey.shade800,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: width * 0.025),
                      margin: EdgeInsets.only(left: width * 0.2),
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/scan.png',
                                height: 30,
                                width: 30,
                                color: Colors.grey.shade800,
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    // List.generate(
                                    //     addtocartprice.length,
                                    //     (index) =>
                                    //         fi[index] = addtocartprice[index]);
                                    Navigator.of(context).pushNamed('/cart',
                                        arguments: addtocartprice);
                                  });
                                },
                                child: Stack(children: [
                                  SvgPicture.asset(
                                    'assets/images/Svg/9ecd99fe332ca484fbb9193d5b78c457.svg',
                                    height: 30,
                                    width: 30,
                                  ),
                                  Positioned(
                                      top: 0,
                                      left: 15,
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: cartcolor,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Text(
                                          "${addtocartimage.length}",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color:
                                                  (addtocartimage.length == 0)
                                                      ? Colors.transparent
                                                      : Colors.black),
                                        ),
                                      ))
                                ]),
                              ),
                              SizedBox(
                                width: width * 0.02,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(color: Colors.transparent),
                //Search bar and mic
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 15,
                                spreadRadius: 3,
                                offset: const Offset(0, 5))
                          ]),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: width * 0.045,
                          ),
                          Text(
                            "Search here",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            width: width * 0.45,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.grey.shade600,
                            size: 27,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.mic_none,
                      color: Colors.grey.shade600,
                      size: 35,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //choose brand and see all
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   width: 13,
                  // ),
                  Text(
                    "Choose brand",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.5,
                        color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    width: 160,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.5,
                        color: Colors.grey.shade700),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //Containers of brands
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 120,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 7,
                      ),
                      brandContainer(
                          brandName: Brands[0]['name'],
                          height: height,
                          width: width,
                          image: Brands[0]['image'],
                          imageHeight: height,
                          imagepercentHeight: 0.078),
                      brandContainer(
                          brandName: Brands[1]['name'],
                          height: height,
                          width: width,
                          image: Brands[1]['image'],
                          // imageHeight: 40,
                          upperSidebox: 14,
                          lowerSidebox: 16,
                          imageHeight: height,
                          imagepercentHeight: 0.044),
                      brandContainer(
                          brandName: Brands[2]['name'],
                          height: height,
                          width: width,
                          image: Brands[2]['image'],
                          // imageHeight: 70,
                          imageHeight: height,
                          imagepercentHeight: 0.078),
                      brandContainer(
                          brandName: Brands[3]['name'],
                          height: height,
                          width: width,
                          image: Brands[3]['image'],
                          // imageHeight: 55,
                          upperSidebox: 8,
                          lowerSidebox: 5,
                          imageHeight: height,
                          imagepercentHeight: 0.062),
                      SizedBox(
                        width: width * 0.045,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              //POPULAR , DISCOUNT
              Container(
                  height: 70,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 21,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          category(
                              categoryName: "Popular",
                              Colors: Colors.grey.shade800),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 4,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50)),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          category(
                              categoryName: "Discount",
                              Colors: Colors.grey.shade500),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          category(
                              categoryName: "Exclusive",
                              Colors: Colors.grey.shade500),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      )
                    ],
                  )),
              // product row of containers

              ezproductconatiners(
                  containerheight: height,
                  containerwidth: width,
                  imageheightinpercent1: 0.172,
                  imageindex1: 0,
                  imageindex2: 1,
                  imageheightinpercent2: 0.128,
                  context: context),
              ezproductconatiners(
                  containerheight: height,
                  containerwidth: width,
                  imageheightinpercent1: 0.150,
                  imageindex1: 2,
                  imageindex2: 3,
                  imageheightinpercent2: 0.123,
                  context: context),
              ezproductconatiners(
                  containerheight: height,
                  containerwidth: width,
                  imageheightinpercent1: 0.203,
                  imageindex1: 4,
                  imageindex2: 5,
                  imageheightinpercent2: 0.14,
                  context: context),
              ezproductconatiners(
                  containerheight: height,
                  containerwidth: width,
                  imageheightinpercent1: 0.138,
                  imageindex1: 6,
                  imageindex2: 7,
                  imageheightinpercent2: 0.129,
                  context: context),
              ezproductconatiners(
                  containerheight: height,
                  containerwidth: width,
                  imageheightinpercent1: 0.129,
                  imageindex1: 8,
                  imageindex2: 9,
                  imageheightinpercent2: 0.205,
                  context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget productContainers(
      {required int index,
      required String discount,
      double? height,
      required double containerHeight,
      required double containerWidth,
      required String itemname,
      required double itemprice,
      required BuildContext context}) {
    return Container(
      height: containerHeight * 0.34,
      width: containerWidth * 0.5,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                switchingscreens[0]['name'] = details[index]['name'];
                switchingscreens[0]['price'] = details[index]['price'];
                switchingscreens[0]['image'] = details[index]['image'];
              });
              Navigator.of(context).pushNamed('/product');
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 21,
              ),
              height: containerHeight * 0.21,
              width: containerWidth * 0.45,
              decoration: BoxDecoration(
                  color: const Color(0xffE3E5E9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: const Offset(0, 3))
                  ]),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 21.5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          details[index]['image'],
                          height: height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 120),
                          height: containerHeight * 0.0165,
                          width: containerWidth * 0.092,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color(0xffFED16A),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                          child: Text(
                            "$discount% OFF",
                            style: const TextStyle(
                                fontSize: 7.5,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // child: Image.asset(),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  margin: const EdgeInsets.only(left: 21, bottom: 8, top: 10),
                  child: Text(
                    "$itemname",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  )),
              Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  margin: const EdgeInsets.only(left: 21),
                  child: Text(
                    "\$$itemprice",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 15.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget ezproductconatiners(
      {required double containerheight,
      required double containerwidth,
      required double imageheightinpercent1,
      imageheightinpercent2,
      required int imageindex1,
      imageindex2,
      required BuildContext context}) {
    return Row(
      children: [
        productContainers(
            index: imageindex1,
            discount: details[imageindex1]['discount'],
            containerHeight: containerheight,
            containerWidth: containerwidth,
            itemname: details[imageindex1]['name'],
            itemprice: details[imageindex1]['price'],
            height: containerheight * imageheightinpercent1,
            context: context),
        productContainers(
            index: imageindex2,
            discount: details[imageindex2]['discount'],
            containerHeight: containerheight,
            containerWidth: containerwidth,
            height: containerheight * imageheightinpercent2,
            itemname: details[imageindex2]['name'],
            itemprice: details[imageindex2]['price'],
            context: context)
      ],
    );
  }
}

//Custom widgets
Widget itemName(String brandName) {
  return Text(
    "$brandName",
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        color: Colors.grey.shade800,
        letterSpacing: -0.5),
  );
}

Widget category({required String categoryName, required Color Colors}) {
  return Text("$categoryName",
      style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          color: Colors,
          fontSize: 17,
          letterSpacing: -0.5));
}

//Product container

Widget brandContainer(
    {required String brandName,
    required double height,
    required double width,
    required String image,
    double? upperSidebox,
    double? lowerSidebox,
    required double imageHeight,
    required double imagepercentHeight}) {
  return Container(
    margin: const EdgeInsets.only(left: 13),
    height: height * 0.1105,
    width: width * 0.25,
    decoration: BoxDecoration(
        color: const Color(0xffE3E5E9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              spreadRadius: 0.5,
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 2),
              blurStyle: BlurStyle.inner)
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: upperSidebox,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '$image',
              height: imageHeight * imagepercentHeight,
              fit: BoxFit.cover,
              color: Colors.grey.shade800,
            ),
          ],
        ),
        SizedBox(
          height: lowerSidebox,
        ),
        itemName("$brandName"),
      ],
    ),
  );
}
