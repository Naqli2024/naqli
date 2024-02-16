import 'dart:math';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/echarts_data.dart';
import 'package:graphic/graphic.dart';
import 'package:flutter/gestures.dart';
import 'package:quiver/iterables.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Dashboard> {
  SideMenuController sideMenu = SideMenuController();
  TextStyle myTextStyle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(128, 118, 118, 1),
  );
  @override
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                            fontSize: 12,
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
                              fontSize: 8,
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
                              fontSize: 8,
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
              padding: const EdgeInsets.only(left: 40),
              child: Container(
                  width: 1800,
                  color: Color.fromRGBO(240, 237, 250, 1),
                  child: Row(
                    children: [
                      Container(
                        height: 1000, // Adjust the height as needed
                        width: 500,
                        color: Color.fromRGBO(234, 232, 235, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            height: 300,
                            width: 450,
                            color: Color.fromRGBO(240, 237, 250, 1),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      30.0), // Adjust the radius as needed
                                  child: Image.asset(
                                    'Circleavatar.png',
                                    width: 550,
                                    height: 400, // Adjust the height as needed
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 450,
                                  height: 360,
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    color: Color.fromRGBO(240, 237, 250, 1),
                                    child: SideMenu(
                                      controller: sideMenu,
                                      style: SideMenuStyle(
                                        displayMode: SideMenuDisplayMode.auto,
                                        selectedColor:
                                            Color.fromRGBO(98, 105, 254, 1),
                                        unselectedTitleTextStyle: myTextStyle,
                                        selectedTitleTextStyle: const TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                        unselectedIconColor:
                                            Color.fromRGBO(128, 118, 118, 1),
                                        selectedIconColor: const Color.fromARGB(
                                            255, 64, 114, 61),
                                      ),
                                      items: [
                                        SideMenuItem(
                                          priority: 0,
                                          title: 'Dashboard',
                                          onTap: (page, _) {
                                            sideMenu.changePage(page);
                                          },
                                          icon:
                                              const Icon(Icons.login_outlined),
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
                                          icon:
                                              const Icon(Icons.inbox_outlined),
                                        ),
                                      ],
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
                        padding: const EdgeInsets.all(50.0),
                        child: Container(
                          height: 1000,
                          color: Color.fromRGBO(240, 237, 250, 1),
                          child: Container(
                            width: 1200,
                            color: Color.fromRGBO(240, 237, 250, 0.9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 150, left: 50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 400,
                                        height: 300,
                                        child: Chart(
                                          data: zip(lineSectionsData).toList(),
                                          variables: {
                                            'time': Variable(
                                              accessor: (List datum) =>
                                                  datum[0] as String,
                                              scale: OrdinalScale(
                                                  inflate: true, tickCount: 6),
                                            ),
                                            'value': Variable(
                                              accessor: (List datum) =>
                                                  datum[1] as num,
                                              scale: LinearScale(
                                                max: 800,
                                                min: 0,
                                                formatter: (v) =>
                                                    '${v.toInt()} W',
                                              ),
                                            ),
                                          },
                                          marks: [
                                            LineMark(
                                              shape: ShapeEncode(
                                                  value: BasicLineShape(
                                                      smooth: true)),
                                            )
                                          ],
                                          axes: [
                                            Defaults.horizontalAxis,
                                            Defaults.verticalAxis,
                                          ],
                                          selections: {
                                            'tooltipMouse': PointSelection(on: {
                                              GestureType.hover,
                                            }, devices: {
                                              PointerDeviceKind.mouse
                                            }, dim: Dim.x),
                                            'tooltipTouch': PointSelection(on: {
                                              GestureType.scaleUpdate,
                                              GestureType.tapDown,
                                              GestureType.longPressMoveUpdate
                                            }, devices: {
                                              PointerDeviceKind.touch
                                            }, dim: Dim.x),
                                          },
                                          tooltip: TooltipGuide(
                                            followPointer: [true, true],
                                            align: Alignment.topLeft,
                                          ),
                                          crosshair: CrosshairGuide(
                                            followPointer: [false, true],
                                          ),
                                          annotations: [
                                            RegionAnnotation(
                                              values: ['07:30', '10:00'],
                                              color: const Color.fromARGB(
                                                  120, 255, 173, 177),
                                            ),
                                            RegionAnnotation(
                                              values: ['17:30', '21:15'],
                                              color: const Color.fromARGB(
                                                  120, 255, 173, 177),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 400,
                                        height: 300,
                                        child: Chart(
                                          data: lineMarkerData,
                                          variables: {
                                            'day': Variable(
                                              accessor: (Map datum) =>
                                                  datum['day'] as String,
                                              scale:
                                                  OrdinalScale(inflate: true),
                                            ),
                                            'value': Variable(
                                              accessor: (Map datum) =>
                                                  datum['value'] as num,
                                              scale: LinearScale(
                                                max: 15,
                                                min: -3,
                                                tickCount: 7,
                                                formatter: (v) =>
                                                    '${v.toInt()} ℃',
                                              ),
                                            ),
                                            'group': Variable(
                                              accessor: (Map datum) =>
                                                  datum['group'] as String,
                                            ),
                                          },
                                          marks: [
                                            LineMark(
                                              position: Varset('day') *
                                                  Varset('value') /
                                                  Varset('group'),
                                              color: ColorEncode(
                                                variable: 'group',
                                                values: [
                                                  const Color(0xff5470c6),
                                                  const Color(0xff91cc75),
                                                ],
                                              ),
                                            ),
                                          ],
                                          axes: [
                                            Defaults.horizontalAxis,
                                            Defaults.verticalAxis,
                                          ],
                                          selections: {
                                            'tooltipMouse': PointSelection(on: {
                                              GestureType.hover,
                                            }, devices: {
                                              PointerDeviceKind.mouse
                                            }, variable: 'day', dim: Dim.x),
                                            'tooltipTouch': PointSelection(on: {
                                              GestureType.scaleUpdate,
                                              GestureType.tapDown,
                                              GestureType.longPressMoveUpdate
                                            }, devices: {
                                              PointerDeviceKind.touch
                                            }, variable: 'day', dim: Dim.x),
                                          },
                                          tooltip: TooltipGuide(
                                            followPointer: [true, true],
                                            align: Alignment.topLeft,
                                            variables: ['group', 'value'],
                                          ),
                                          crosshair: CrosshairGuide(
                                            followPointer: [false, true],
                                          ),
                                          annotations: [
                                            LineAnnotation(
                                              dim: Dim.y,
                                              value: 6.14,
                                              style: PaintStyle(
                                                strokeColor:
                                                    const Color(0xff5470c6)
                                                        .withAlpha(100),
                                                dash: [2],
                                              ),
                                            ),
                                            LineAnnotation(
                                              dim: Dim.y,
                                              value: 3.57,
                                              style: PaintStyle(
                                                strokeColor:
                                                    const Color(0xff91cc75)
                                                        .withAlpha(100),
                                                dash: [2],
                                              ),
                                            ),
                                            CustomAnnotation(
                                                renderer: (offset, _) => [
                                                      CircleElement(
                                                          center: offset,
                                                          radius: 5,
                                                          style: PaintStyle(
                                                              fillColor:
                                                                  const Color(
                                                                      0xff5470c6)))
                                                    ],
                                                values: ['Mar', -3]),
                                            CustomAnnotation(
                                                renderer: (offset, _) => [
                                                      CircleElement(
                                                          center: offset,
                                                          radius: 5,
                                                          style: PaintStyle(
                                                              fillColor:
                                                                  const Color(
                                                                      0xff5470c6)))
                                                    ],
                                                values: ['Jul', -7]),
                                            CustomAnnotation(
                                                renderer: (offset, _) => [
                                                      CircleElement(
                                                          center: offset,
                                                          radius: 5,
                                                          style: PaintStyle(
                                                              fillColor:
                                                                  const Color(
                                                                      0xff91cc75)))
                                                    ],
                                                values: ['Feb', 2]),
                                            CustomAnnotation(
                                                renderer: (offset, _) => [
                                                      CircleElement(
                                                          center: offset,
                                                          radius: 5,
                                                          style: PaintStyle(
                                                              fillColor:
                                                                  const Color(
                                                                      0xff91cc75)))
                                                    ],
                                                values: ['Apr', -5]),
                                            TagAnnotation(
                                              label: Label(
                                                  '13',
                                                  LabelStyle(
                                                    textStyle:
                                                        Defaults.textStyle,
                                                    offset:
                                                        const Offset(0, -10),
                                                  )),
                                              values: ['Mar', -13],
                                            ),
                                            TagAnnotation(
                                              label: Label(
                                                  '9',
                                                  LabelStyle(
                                                    textStyle:
                                                        Defaults.textStyle,
                                                    offset:
                                                        const Offset(0, -10),
                                                  )),
                                              values: ['July', -9],
                                            ),
                                            TagAnnotation(
                                              label: Label(
                                                  '-2',
                                                  LabelStyle(
                                                    textStyle:
                                                        Defaults.textStyle,
                                                    offset:
                                                        const Offset(0, -10),
                                                  )),
                                              values: ['Feb', -2],
                                            ),
                                            TagAnnotation(
                                              label: Label(
                                                  '5',
                                                  LabelStyle(
                                                    textStyle:
                                                        Defaults.textStyle,
                                                    offset:
                                                        const Offset(0, -10),
                                                  )),
                                              values: ['Apr', -5],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        height: 300,
                                        color: Colors.white,
                                        width: 193,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                height:
                                                    70, // Adjust the height as needed
                                                color: Color.fromRGBO(75, 61,
                                                    82, 1), // Brown color
                                                child: Center(
                                                  child: Text(
                                                    'New Booking',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  height:
                                                      8.0), // Add spacing between the brown container and the white container
                                              Container(
                                                height:
                                                    70, // Adjust the height as needed
                                                color: Colors.white,
                                                child: Center(
                                                  child: FloatingActionButton(
                                                    onPressed: () {
                                                      // Add your plus button functionality here
                                                    },
                                                    child: Icon(Icons.add),
                                                    backgroundColor: Colors
                                                        .blue, // Customize the button color
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
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
