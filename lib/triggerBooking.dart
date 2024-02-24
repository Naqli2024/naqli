import 'dart:math';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/echarts_data.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:graphic/graphic.dart';
import 'package:flutter/gestures.dart';
import 'package:quiver/iterables.dart';

class TriggerBooking extends StatefulWidget {
  const TriggerBooking({Key? key}) : super(key: key);

  @override
  State<TriggerBooking> createState() => TriggerBookingState();
}

class TriggerBookingState extends State<TriggerBooking> {
  SideMenuController sideMenu = SideMenuController();
  bool value = false;
  int? selectedRadioValue;
  TextStyle myTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(128, 118, 118, 1),
  );
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.height, 90),
        child: Material(
          elevation: 5,
          child: Padding(
            padding:
                EdgeInsets.fromLTRB(w * 0.05, h * 0.005, w * 0.025, h * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'Naqli-final-logo.png',
                  width: 140,
                  height: 150,
                ),
                Row(
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {
                          // Handle the first button press
                        },
                        child: Text(
                          'User',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Segoe UI",
                            color: Color.fromRGBO(112, 112, 112, 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Color.fromRGBO(206, 203, 203, 1),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          // Handle the second button press
                        },
                        child: Text(
                          'Enterprise',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Segoe UI",
                            color: Color.fromRGBO(206, 203, 203, 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Color.fromRGBO(206, 203, 203, 1),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          // Handle the third button press
                        },
                        child: Text(
                          'Partner',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Segoe UI",
                            color: Color.fromRGBO(206, 203, 203, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Color.fromRGBO(106, 102, 209, 1),
                      ),
                      SizedBox(
                        height: 30,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 5),
                          child: Text(
                            "Contact Us",
                            style: TextStyle(
                              fontFamily: 'Colfax',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 170,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13, top: 5),
                          child: Text(
                            "Hello Faizal!",
                            style: TextStyle(
                              fontFamily: 'Colfax',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Flexible(
          fit: FlexFit.tight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: EdgeInsets.only(left: 80),
              child: Container(
                  width: 1700,
                  color: Color.fromRGBO(240, 237, 250, 1),
                  child: Row(
                    children: [
                      Container(
                        height: 1000, // Adjust the height as needed
                        width: 400,
                        color: Color.fromRGBO(234, 232, 235, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            height: 350,
                            width: 400,
                            color: Color.fromRGBO(240, 237, 250, 1),
                            child: Column(
                              children: [
                                Container(
                                  height: 350,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        30.0), // Adjust the radius as needed
                                    child: Image.asset(
                                      'Circleavatar.png',
                                      width: 550,
                                      height:
                                          400, // Adjust the height as needed
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 500,
                                  height: 370,
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Color.fromRGBO(240, 237, 250, 1),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 50),
                                      child: SideMenu(
                                        controller: sideMenu,
                                        style: SideMenuStyle(
                                          displayMode: SideMenuDisplayMode.auto,
                                          selectedColor:
                                              Color.fromRGBO(98, 105, 254, 1),
                                          unselectedTitleTextStyle: myTextStyle,
                                          selectedTitleTextStyle:
                                              const TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                          unselectedIconColor:
                                              Color.fromRGBO(128, 118, 118, 1),
                                          selectedIconColor:
                                              const Color.fromARGB(
                                                  255, 64, 114, 61),
                                        ),
                                        items: [
                                          SideMenuItem(
                                            priority: 0,
                                            title: 'Dashboard',
                                            onTap: (page, _) {
                                              sideMenu.changePage(page);
                                            },
                                            icon: const Icon(
                                                Icons.login_outlined),
                                          ),
                                          SideMenuItem(
                                            priority: 1,
                                            title: 'Trigger Booking',
                                            onTap: (page, _) {
                                              sideMenu.changePage(page);
                                            },
                                            icon: const Icon(
                                                Icons.person_2_outlined),
                                          ),
                                          SideMenuItem(
                                            priority: 2,
                                            title: 'Bookings',
                                            onTap: (page, _) {
                                              sideMenu.changePage(page);
                                            },
                                            icon: const Icon(
                                                Icons.person_2_outlined),
                                            // Set the style property to change the text size
                                          ),
                                          SideMenuItem(
                                            priority: 3,
                                            title: 'Payments',
                                            onTap: (page, _) {
                                              sideMenu.changePage(page);
                                            },
                                            icon: const Icon(
                                                Icons.mode_comment_outlined),
                                          ),
                                          SideMenuItem(
                                            priority: 4,
                                            title: 'Report an issue',
                                            onTap: (page, _) {
                                              sideMenu.changePage(page);
                                            },
                                            icon: const Icon(
                                                Icons.mode_comment_outlined),
                                          ),
                                          SideMenuItem(
                                            priority: 5,
                                            title: 'Help',
                                            onTap: (page, _) {
                                              sideMenu.changePage(page);
                                            },
                                            icon: const Icon(
                                                Icons.inbox_outlined),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                // Add other widgets if needed below the image
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          height: 1050,
                          color: Color.fromRGBO(240, 237, 250, 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 1200,
                                color: Color.fromRGBO(240, 237, 250, 0.9),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 316,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          width: 1200,
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                color: Color.fromRGBO(75, 61,
                                                    82, 1), // Brown color
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 60),
                                                        child: Text(
                                                          'Trigger Booking',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 23,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 800),
                                                        child: Text(
                                                          "Actions",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  "Helvetica",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),

                                              // Add spacing between the brown container and the white container
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  height: 230,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    // Set a common borderRadius for all containers
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Transform
                                                                      .scale(
                                                                    scale: 1.0,
                                                                    child:
                                                                        Checkbox(
                                                                      value: this
                                                                          .value,
                                                                      onChanged:
                                                                          (bool?
                                                                              value) {
                                                                        // Change the parameter type to bool?
                                                                        setState(
                                                                            () {
                                                                          this.value =
                                                                              value ?? false; // Use null-aware operator to handle null case
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                  width: 10),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Trip 1',
                                                                    style:
                                                                        const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 3,
                                                                  ),
                                                                  Text(
                                                                    "Booking ID Xxxxxx",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            "SFProText",
                                                                        fontSize:
                                                                            14),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 100,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              200,
                                                                              251,
                                                                              253,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 1", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              224,
                                                                              253,
                                                                              200,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 2", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              245,
                                                                              253,
                                                                              200,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 3", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      constraints:
                                                                          BoxConstraints(),
                                                                      onPressed:
                                                                          null,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .edit_document,
                                                                        color: Color.fromRGBO(
                                                                            74,
                                                                            60,
                                                                            81,
                                                                            1),
                                                                      )),
                                                                  IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      // constraints:
                                                                      //     BoxConstraints(),
                                                                      onPressed:
                                                                          null,
                                                                      icon: Icon(
                                                                          Icons
                                                                              .delete)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                              SizedBox(
                                                                width: 150,
                                                                height: 50,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    // Handle button press
                                                                    print(
                                                                        'Elevated Button Pressed!');
                                                                  },
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary: Color
                                                                        .fromRGBO(
                                                                            98,
                                                                            105,
                                                                            254,
                                                                            1),
                                                                    side:
                                                                        BorderSide(
                                                                      color: Color.fromRGBO(
                                                                          98,
                                                                          105,
                                                                          254,
                                                                          1),
                                                                    ),
                                                                  ),
                                                                  child: Text(
                                                                    'Pay Now',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            16,
                                                                        fontFamily:
                                                                            "Helvetica"),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          SizedBox(
                                                            width: 1184,
                                                            child: Divider(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      206,
                                                                      203,
                                                                      203,
                                                                      1),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Checkbox(
                                                                    value: this
                                                                        .value,
                                                                    onChanged:
                                                                        (bool?
                                                                            value) {
                                                                      // Change the parameter type to bool?
                                                                      setState(
                                                                          () {
                                                                        this.value =
                                                                            value ??
                                                                                false; // Use null-aware operator to handle null case
                                                                      });
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                  width: 10),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Equipment Hire',
                                                                    style:
                                                                        const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 3,
                                                                  ),
                                                                  Text(
                                                                    "Booking ID Xxxxxx",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            "SFProText",
                                                                        fontSize:
                                                                            14),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 100,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              200,
                                                                              251,
                                                                              253,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 1", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              224,
                                                                              253,
                                                                              200,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 2", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              245,
                                                                              253,
                                                                              200,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 3", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      constraints:
                                                                          BoxConstraints(),
                                                                      onPressed:
                                                                          null,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .edit_document,
                                                                        color: Color.fromRGBO(
                                                                            74,
                                                                            60,
                                                                            81,
                                                                            1),
                                                                      )),
                                                                  IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      // constraints:
                                                                      //     BoxConstraints(),
                                                                      onPressed:
                                                                          null,
                                                                      icon: Icon(
                                                                          Icons
                                                                              .delete)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                              SizedBox(
                                                                width: 150,
                                                                height: 50,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    // Handle button press
                                                                    print(
                                                                        'Elevated Button Pressed!');
                                                                  },
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary: Color
                                                                        .fromRGBO(
                                                                            98,
                                                                            105,
                                                                            254,
                                                                            1),
                                                                    side:
                                                                        BorderSide(
                                                                      color: Color.fromRGBO(
                                                                          98,
                                                                          105,
                                                                          254,
                                                                          1),
                                                                    ),
                                                                  ),
                                                                  child: Text(
                                                                    'Pay Now',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            16,
                                                                        fontFamily:
                                                                            "Helvetica"),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          SizedBox(
                                                            width: 1184,
                                                            child: Divider(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      206,
                                                                      203,
                                                                      203,
                                                                      1),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Checkbox(
                                                                    value: this
                                                                        .value,
                                                                    onChanged:
                                                                        (bool?
                                                                            value) {
                                                                      // Change the parameter type to bool?
                                                                      setState(
                                                                          () {
                                                                        this.value =
                                                                            value ??
                                                                                false; // Use null-aware operator to handle null case
                                                                      });
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                  width: 10),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Bus Trip',
                                                                    style:
                                                                        const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 3,
                                                                  ),
                                                                  Text(
                                                                    "Booking ID Xxxxxx",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            "SFProText",
                                                                        fontSize:
                                                                            14),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 100,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              200,
                                                                              251,
                                                                              253,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 1", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              224,
                                                                              253,
                                                                              200,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 2", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          165,
                                                                      height:
                                                                          50,
                                                                      decoration: BoxDecoration(
                                                                          color: Color.fromRGBO(
                                                                              245,
                                                                              253,
                                                                              200,
                                                                              1),
                                                                          borderRadius: BorderRadius.circular(
                                                                              25.0),
                                                                          border:
                                                                              Border.all(color: Color.fromARGB(246, 245, 242, 242))),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Radio(
                                                                                value: 1,
                                                                                fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                                                                                groupValue: selectedRadioValue,
                                                                                onChanged: (value) {
                                                                                  setState(() {
                                                                                    selectedRadioValue = value;
                                                                                  });
                                                                                },
                                                                                activeColor: Colors.white, // Set the background color when the radio button is selected
                                                                              ),
                                                                              SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text("Vendor 3", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 9, color: Color.fromRGBO(128, 118, 118, 1))),
                                                                              SizedBox(width: 10),
                                                                              Text(
                                                                                "Xxxxx SAR",
                                                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: Color.fromRGBO(127, 106, 255, 1)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      constraints:
                                                                          BoxConstraints(),
                                                                      onPressed:
                                                                          null,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .edit_document,
                                                                        color: Color.fromRGBO(
                                                                            74,
                                                                            60,
                                                                            81,
                                                                            1),
                                                                      )),
                                                                  IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      // constraints:
                                                                      //     BoxConstraints(),
                                                                      onPressed:
                                                                          null,
                                                                      icon: Icon(
                                                                          Icons
                                                                              .delete)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                width: 20,
                                                              ),
                                                              SizedBox(
                                                                width: 150,
                                                                height: 50,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    // Handle button press
                                                                    print(
                                                                        'Elevated Button Pressed!');
                                                                  },
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary: Color
                                                                        .fromRGBO(
                                                                            98,
                                                                            105,
                                                                            254,
                                                                            1),
                                                                    side:
                                                                        BorderSide(
                                                                      color: Color.fromRGBO(
                                                                          98,
                                                                          105,
                                                                          254,
                                                                          1),
                                                                    ),
                                                                  ),
                                                                  child: Text(
                                                                    'Pay Now',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            16,
                                                                        fontFamily:
                                                                            "Helvetica"),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 200,
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Container(
                                        height:
                                            10, // Adjust the height as needed
                                        width:
                                            1200, // Set the desired length of the scroll bar
                                        color: Colors
                                            .grey, // Background color of the scrollable area
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle button press
                                    print('Elevated Button Pressed!');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(98, 105, 254, 1),
                                    side: BorderSide(
                                      color: Color.fromRGBO(98, 105, 254, 1),
                                    ),
                                  ),
                                  child: Text(
                                    'Confirm Booking',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.4,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}