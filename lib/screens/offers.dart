import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Offers extends StatefulWidget {
  const Offers({
    Key? key,
  }) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  var username = "Julia Albert";
  var location = "İstanbul, Turkey";
  var date = "10 Aralık";
  var aciklama = "Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.";
  var avatar = "images/Avatar.png";
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height / 844;
    final double deviceWidth = MediaQuery.of(context).size.width / 390;

    return Scaffold(
      backgroundColor: ProjectColors.ScaffoldBackground,
      bottomNavigationBar: BottomIcons(
        deviceWidth: deviceWidth,
        deviceHeight: deviceHeight,
      ),
      appBar: AppBar(
        leading: Padding(
          padding: ProjectEdgeInsets.ProjectEdgeAppBar(deviceWidth),
          child: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "İlanlar",
          style: TextStyle(
            color: Colors.black,
            fontSize: deviceHeight * 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: ProjectEdgeInsets.ProjectEdgeAppBar(deviceWidth),
            child: const Icon(
              Icons.linear_scale,
              color: Colors.black,
            ),
          ),
        ],
        toolbarHeight: deviceHeight * 50,
        backgroundColor: ProjectColors.ScaffoldBackground,
        elevation: 0.0,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
                margin: EdgeInsets.only(
                  left: deviceWidth * 10,
                  right: deviceWidth * 10,
                  bottom: deviceHeight * 35,
                ),
                width: deviceWidth * 370,
                height: 182,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: deviceHeight * 4,
                      offset: Offset(0.0, deviceHeight * 4.0),
                      color: Color.fromARGB(25, 0, 0, 0),
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                  color: Color.fromARGB(255, 251, 251, 251),
                  border: Border.all(
                    width: deviceWidth * 1,
                    color: Color.fromARGB(255, 243, 242, 241),
                  ),
                  borderRadius: BorderRadius.circular(deviceHeight * 15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: deviceHeight * 10,
                            left: deviceWidth * 16,
                          ),
                          width: deviceWidth * 39,
                          height: deviceWidth * 39,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(avatar),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: deviceHeight * 10),
                              width: deviceWidth * 152,
                              height: deviceHeight * 30,
                              child: Text(
                                username,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset("images/icon1.png"),
                                Text(location),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: deviceHeight * 5),
                              width: deviceWidth * 76,
                              height: deviceHeight * 21,
                              child: Row(
                                children: [
                                  Image.asset("images/icon.png"),
                                  Text(date),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: deviceWidth * 100,
                          height: deviceHeight * 30,
                          margin: EdgeInsets.only(
                            top: deviceHeight * 5,
                            right: deviceWidth * 10,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Detayları Görüntüle",
                              style: TextStyle(
                                fontSize: deviceHeight * 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: deviceWidth * 18,
                        top: deviceHeight * 19,
                        right: deviceWidth * 18,
                      ),
                      width: deviceWidth * 333,
                      height: deviceHeight * 74,
                      child: Text(aciklama),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}

class ProjectColors {
  static Color AppBar = const Color.fromARGB(255, 223, 241, 255);
  static Color ScaffoldBackground = Color.fromARGB(255, 241, 243, 246);
}

class BottomIcons extends StatelessWidget {
  const BottomIcons({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectEdgeInsets.bottomEdge(deviceWidth, deviceHeight),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            deviceHeight * 16,
          ),
        ),
        height: deviceHeight * 72,
        width: deviceWidth * 359,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_filled,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_sharp,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mail,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.blueGrey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectEdgeInsets {
  static EdgeInsets bottomEdge(double deviceWidth, double deviceHeight) => EdgeInsets.only(
        left: deviceWidth * 14.0,
        right: deviceWidth * 14,
        top: deviceHeight * 10,
        bottom: deviceHeight * 14,
      );

  static EdgeInsets ProjectEdgeAppBar(double deviceWidth) => EdgeInsets.only(
        right: deviceWidth * 25.0,
        left: deviceWidth * 25.0,
      );
}
