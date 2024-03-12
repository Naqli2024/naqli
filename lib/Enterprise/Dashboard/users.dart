import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Widgets/customButton.dart';
import 'package:flutter_application_1/Widgets/customRadio.dart';
import 'package:flutter_application_1/Widgets/formText.dart';
import 'package:flutter_application_1/bookingdialog.dart';
import 'package:sizer/sizer.dart';

class Users extends StatefulWidget {
  Users();
  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  bool value = false;
  bool isButtonEnabled = false;
  bool isButtonEnabled1 = false;
  bool isButtonEnabled2 = false;
  int? selectedRadioValue;
  int? selectedRadioValue1;
  int? selectedRadioValue2;
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  final ScrollController _scrollController = ScrollController();
  final ScrollController _Scroll = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
        if (constraints.maxWidth >= 950) {
          return SingleChildScrollView(
              child: Container(
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.fromRGBO(255, 255, 255, 0.925),
            ),
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromRGBO(240, 240, 240, 1).withOpacity(0.1),
                          offset: Offset(0, 0),
                          spreadRadius: 2.0,
                          blurRadius: 0.01, // changes position of shadow
                        ),
                      ],
                      color: Color.fromRGBO(75, 61, 82, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                    ),
                    height: 70, // Brown color
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(3.w, 1.5.h, 1.5.w, 1.5.h),
                      child: Row(
                        children: [
                          Text(
                            'Users',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Helvetica",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 127,
                            height: 40,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(
                                      15), // Adjust border radius as needed
                                ),
                              ),
                              icon: Icon(
                                Icons.add,
                                size: 15,
                              ),
                              label: Text('Add user',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Helvetica',
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 1100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(112, 112, 112, 1),
                                offset: Offset(0, 0),
                                spreadRadius: 2.0,
                                blurRadius: 0.01, // changes position of shadow
                              ),
                            ],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0)),
                          ),
                          child: SizedBox(
                            height: 350,
                            child: ListView(
                              children: [_booking1Table()],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
        } else {
          return SingleChildScrollView(
            child: Expanded(
              child: Container(
                  color: Color.fromRGBO(255, 255, 255, 200),
                  padding: EdgeInsets.fromLTRB(3.w, 1.5.h, 3.w, 1.5.h),
                  child: Column(children: [
                    Container(
                      height: 90.h,
                      padding: EdgeInsets.fromLTRB(5.w, 1.5.h, 5.w, 1.5.h),
                      color: Color.fromRGBO(255, 255, 255, 157),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Scrollbar(
                              controller: _scrollController,
                              thumbVisibility:
                                  true, // Set to true to always show the scrollbar
                              child: SingleChildScrollView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12)),
                                  ),
                                  width: 1200,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 55,
                                        color: Color.fromRGBO(
                                            75, 61, 82, 1), // Brown color
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              1.5.w, 1.5.h, 1.5.w, 1.5.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Trigger Booking',
                                                  style: TabelText.headerText),
                                              Text("Actions",
                                                  style: TabelText.headerText),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // Add spacing between the brown container and the white container
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.w, 1.h, 1.w, 1.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: checkbox1,
                                                  onChanged: (bool? newValue) {
                                                    setState(() {
                                                      value = newValue!;
                                                    });
                                                  },
                                                ),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Trip 1',
                                                        style: TabelText.text1),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      "Booking ID Xxxxxx",
                                                      style: TabelText.text2,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      // setState(
                                                      //     () {
                                                      //   if (selectedRadioValue ==
                                                      //       val) {
                                                      //     // Disable button
                                                      //   } else {
                                                      //     selectedRadioValue =
                                                      //         val as int?;
                                                      //     isButtonEnabled1 =
                                                      //         true; // Enable button
                                                      //   }
                                                      // });
                                                      setState(() {
                                                        isButtonEnabled = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue,
                                                    value: 1,
                                                    colors: Color.fromRGBO(
                                                        200, 251, 253, 1),
                                                    text1: 'Vendor 3',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      setState(() {
                                                        isButtonEnabled = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue,
                                                    value: 2,
                                                    colors: Color.fromRGBO(
                                                        224, 253, 200, 1),
                                                    text1: 'Vendor 2',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      setState(() {
                                                        isButtonEnabled = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue,
                                                    value: 3,
                                                    colors: Color.fromRGBO(
                                                        245, 253, 200, 1),
                                                    text1: 'Vendor 3',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.zero,
                                                  constraints: BoxConstraints(),
                                                  onPressed: null,
                                                  icon: Icon(
                                                    Icons.edit_document,
                                                    color: Color.fromRGBO(
                                                        74, 60, 81, 1),
                                                  ),
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: null,
                                                  icon: Icon(Icons.delete),
                                                ),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                  child: ElevatedButton(
                                                    onPressed: isButtonEnabled
                                                        ? () {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return BookingDialog();
                                                              },
                                                            );
                                                          }
                                                        : null,
                                                    style: isButtonEnabled
                                                        ? ElevatedButton
                                                            .styleFrom(
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                    212,
                                                                    213,
                                                                    248,
                                                                    1),
                                                            side: BorderSide(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          )
                                                        : ElevatedButton
                                                            .styleFrom(
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                    212,
                                                                    213,
                                                                    248,
                                                                    0.897),
                                                            side: BorderSide(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                    child: Text(
                                                      'Pay Now',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 12,
                                                        fontFamily: "Helvetica",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(
                                        width: 1184,
                                        child: Divider(
                                          color:
                                              Color.fromRGBO(206, 203, 203, 1),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.w, 1.h, 1.w, 1.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: checkbox2,
                                                  onChanged: (bool? newValue) {
                                                    setState(() {
                                                      value = newValue!;
                                                    });
                                                  },
                                                ),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Equipment Hire',
                                                        style: TabelText.text1),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      "Booking ID Xxxxxx",
                                                      style: TabelText.text2,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      // setState(
                                                      //     () {
                                                      //   if (selectedRadioValue ==
                                                      //       val) {
                                                      //     // Disable button
                                                      //   } else {
                                                      //     selectedRadioValue =
                                                      //         val as int?;
                                                      //     isButtonEnabled1 =
                                                      //         true; // Enable button
                                                      //   }
                                                      // });
                                                      setState(() {
                                                        selectedRadioValue1 =
                                                            null; // Unselect if already selected
                                                        isButtonEnabled1 = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue1,
                                                    value: 1,
                                                    colors: Color.fromRGBO(
                                                        200, 251, 253, 1),
                                                    text1: 'Vendor 3',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      setState(() {
                                                        selectedRadioValue1 =
                                                            null; // Unselect if already selected
                                                        isButtonEnabled1 = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue1,
                                                    value: 2,
                                                    colors: Color.fromRGBO(
                                                        224, 253, 200, 1),
                                                    text1: 'Vendor 2',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      setState(() {
                                                        selectedRadioValue1 =
                                                            null; // Unselect if already selected
                                                        isButtonEnabled1 = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue1,
                                                    value: 3,
                                                    colors: Color.fromRGBO(
                                                        245, 253, 200, 1),
                                                    text1: 'Vendor 3',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.zero,
                                                  constraints: BoxConstraints(),
                                                  onPressed: null,
                                                  icon: Icon(
                                                    Icons.edit_document,
                                                    color: Color.fromRGBO(
                                                        74, 60, 81, 1),
                                                  ),
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: null,
                                                  icon: Icon(Icons.delete),
                                                ),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                  child: ElevatedButton(
                                                    onPressed: isButtonEnabled1
                                                        ? () {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return BookingDialog();
                                                              },
                                                            );
                                                            print(
                                                                'Elevated Button Pressed!');
                                                          }
                                                        : null,
                                                    style: isButtonEnabled1
                                                        ? ElevatedButton
                                                            .styleFrom(
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                    212,
                                                                    213,
                                                                    248,
                                                                    1),
                                                            side: BorderSide(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          )
                                                        : ElevatedButton
                                                            .styleFrom(
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                    212,
                                                                    213,
                                                                    248,
                                                                    0.897),
                                                            side: BorderSide(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                    child: Text(
                                                      'Pay Now',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 12,
                                                        fontFamily: "Helvetica",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(
                                        width: 1184,
                                        child: Divider(
                                          color:
                                              Color.fromRGBO(206, 203, 203, 1),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            1.w, 1.h, 1.w, 1.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Checkbox(
                                                  value: checkbox3,
                                                  onChanged: (bool? newValue) {
                                                    setState(() {
                                                      value = newValue!;
                                                    });
                                                  },
                                                ),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Bus Trip',
                                                        style: TabelText.text1),
                                                    SizedBox(
                                                      height: 3,
                                                    ),
                                                    Text(
                                                      "Booking ID Xxxxxx",
                                                      style: TabelText.text2,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      // setState(
                                                      //     () {
                                                      //   if (selectedRadioValue ==
                                                      //       val) {
                                                      //     // Disable button
                                                      //   } else {
                                                      //     selectedRadioValue =
                                                      //         val as int?;
                                                      //     isButtonEnabled1 =
                                                      //         true; // Enable button
                                                      //   }
                                                      // });
                                                      setState(() {
                                                        selectedRadioValue2 =
                                                            null; // Unselect if already selected
                                                        isButtonEnabled2 = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue2,
                                                    value: 1,
                                                    colors: Color.fromRGBO(
                                                        200, 251, 253, 1),
                                                    text1: 'Vendor 3',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      setState(() {
                                                        selectedRadioValue2 =
                                                            null; // Unselect if already selected
                                                        isButtonEnabled2 = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue2,
                                                    value: 2,
                                                    colors: Color.fromRGBO(
                                                        224, 253, 200, 1),
                                                    text1: 'Vendor 2',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 3.w,
                                                ),
                                                CustomRadio(
                                                    onChanged: (val) {
                                                      setState(() {
                                                        selectedRadioValue2 =
                                                            null; // Unselect if already selected
                                                        isButtonEnabled2 = true;
                                                      });
                                                    },
                                                    groupValue:
                                                        selectedRadioValue2,
                                                    value: 3,
                                                    colors: Color.fromRGBO(
                                                        245, 253, 200, 1),
                                                    text1: 'Vendor 3',
                                                    textcolor1: Colors.black54,
                                                    text2: "Xxxxx SAR",
                                                    textcolor2: Colors.black38),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.zero,
                                                  constraints: BoxConstraints(),
                                                  onPressed: null,
                                                  icon: Icon(
                                                    Icons.edit_document,
                                                    color: Color.fromRGBO(
                                                        74, 60, 81, 1),
                                                  ),
                                                ),
                                                IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: null,
                                                  icon: Icon(Icons.delete),
                                                ),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                  child: ElevatedButton(
                                                    onPressed: isButtonEnabled2
                                                        ? () {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return BookingDialog();
                                                              },
                                                            );
                                                          }
                                                        : null,
                                                    style: isButtonEnabled2
                                                        ? ElevatedButton
                                                            .styleFrom(
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                    212,
                                                                    213,
                                                                    248,
                                                                    1),
                                                            side: BorderSide(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          )
                                                        : ElevatedButton
                                                            .styleFrom(
                                                            backgroundColor:
                                                                Color.fromRGBO(
                                                                    212,
                                                                    213,
                                                                    248,
                                                                    0.897),
                                                            side: BorderSide(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                    child: Text(
                                                      'Pay Now',
                                                      style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 12,
                                                        fontFamily: "Helvetica",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton(
                      onPressed: () {},
                      text: 'Confirm Booking',
                    )
                  ])),
            ),
          );
        }
      });
    });
  }

  DataTable _booking1Table() {
    return DataTable(
        headingRowColor: MaterialStateColor.resolveWith(
          (states) => Color.fromRGBO(75, 61, 82, 1),
        ),
        dividerThickness: BorderSide.strokeAlignOutside,
        columnSpacing: 15,
        dataRowHeight: 65,
        columns: _booking1Columns(),
        rows: _booking1Rows());
  }

  List<DataColumn> _booking1Columns() {
    return [
      DataColumn(label: Text('dfsd', style: TabelText.helvetica16)),
      DataColumn(label: Text('User name', style: TabelText.helvetica16)),
      DataColumn(label: Text('User id', style: TabelText.helvetica16)),
      DataColumn(label: Text('Email id', style: TabelText.helvetica16)),
      DataColumn(label: Text('Last sign-in', style: TabelText.helvetica16)),
      DataColumn(label: Text('Contact no', style: TabelText.helvetica16)),
      DataColumn(label: Text('Address', style: TabelText.helvetica16)),
      DataColumn(
          label: SizedBox(
              width: 70,
              child: Text('Access to', style: TabelText.helvetica16))),
      DataColumn(label: Text('Action', style: TabelText.helvetica16)),
    ];
  }

  // List<DataRow> _createRows() {
  //   return _books
  //       .map((book) => DataRow(cells: [
  //             DataCell(Text('#' + book['id'].toString())),
  //             DataCell(Text(book['title'])),
  //             DataCell(Text(book['author']))
  //           ]))
  //       .toList();
  // }
  List<DataRow> _booking1Rows() {
    return [
      DataRow(cells: [
        DataCell(
          SizedBox(
            width: 27,
            height: 27,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 51, 116, 53),
            ),
          ),
        ),
        DataCell(Text('Zenithusu', style: TabelText.helvetica)),
        DataCell(Text('#3524154212', style: TabelText.helvetica)),
        DataCell(Text('xyz@gmail.com', style: TabelText.helvetica)),
        DataCell(Text('Last hour', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(SizedBox(
            width: 60,
            child: Text('Trigger Booking', style: TabelText.helvetica))),
        DataCell(Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('editicon.png')),
            SizedBox(
              width: 1.w,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('deleteicon.png')),
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(
          SizedBox(
            width: 27,
            height: 27,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 51, 116, 53),
            ),
          ),
        ),
        DataCell(Text('Akaza', style: TabelText.helvetica)),
        DataCell(Text('#3524154212', style: TabelText.helvetica)),
        DataCell(Text('xyz@gmail.com', style: TabelText.helvetica)),
        DataCell(Text('2 days', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(SizedBox(
            width: 60, child: Text('Contracts', style: TabelText.helvetica))),
        DataCell(Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('editicon.png')),
            SizedBox(
              width: 1.w,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('deleteicon.png')),
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(
          SizedBox(
            width: 27,
            height: 27,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 51, 116, 53),
            ),
          ),
        ),
        DataCell(Text('Inosuke', style: TabelText.helvetica)),
        DataCell(Text('#3524154212', style: TabelText.helvetica)),
        DataCell(Text('xyz@gmail.com', style: TabelText.helvetica)),
        DataCell(Text('1 week', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(SizedBox(
            width: 60,
            child: Text('Booking Manager', style: TabelText.helvetica))),
        DataCell(Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('editicon.png')),
            SizedBox(
              width: 1.w,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('deleteicon.png')),
          ],
        ))
      ]),
      DataRow(cells: [
        DataCell(
          SizedBox(
            width: 27,
            height: 27,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 51, 116, 53),
            ),
          ),
        ),
        DataCell(Text('Tengen', style: TabelText.helvetica)),
        DataCell(Text('#3524154212', style: TabelText.helvetica)),
        DataCell(Text('xyz@gmail.com', style: TabelText.helvetica)),
        DataCell(Text('6 days', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(Text('XXXXXXXXX', style: TabelText.helvetica)),
        DataCell(Text('-', style: TabelText.helvetica)),
        DataCell(Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('editicon.png')),
            SizedBox(
              width: 1.w,
            ),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: Image.asset('deleteicon.png')),
          ],
        ))
      ]),
    ];
  }
}

// class CandidateListSource extends DataTableSource {
//   CandidateListSource();

//   @override
//   DataRow? getRow(int index) {
//     return DataRow.byIndex(
//       index: index,
//       cells: [
//         DataCell(
//           SizedBox(
//             width: 27,
//             height: 27,
//             child: CircleAvatar(
//               backgroundColor: const Color.fromARGB(255, 51, 116, 53),
//             ),
//           ),
//         ),
//         DataCell(Text('Zenithusu')),
//         DataCell(Text('#3524154212')),
//         DataCell(Text('xyz@gmail.com')),
//         DataCell(Text('Last hour')),
//         DataCell(Text('XXXXXXXXX')),
//         DataCell(Text('XXXXXXXXX')),
//         DataCell(Text('Trigger Booking')),
//         DataCell(Row(
//           children: [
//             IconButton(
//                 padding: EdgeInsets.zero,
//                 constraints: BoxConstraints(),
//                 onPressed: () {},
//                 icon: Image.asset('editicon.png')),
//             SizedBox(
//               width: 1.w,
//             ),
//             IconButton(
//                 padding: EdgeInsets.zero,
//                 constraints: BoxConstraints(),
//                 onPressed: () {},
//                 icon: Image.asset('deleteicon.png')),
//           ],
//         ))
//         // DataCell(
//         //   Text(e.name.toString()),
//         //   onTap: () {
//         //     onSelect(e);
//         //   },
//         // ),
//         // DataCell(
//         //   SizedBox(
//         //     width: 27,
//         //     height: 27,
//         //     child: CircleAvatar(
//         //       backgroundColor: const Color.fromARGB(255, 51, 116, 53),
//         //     ),
//         //   ),
//         // ),
//         // DataCell(Text(e.qualification?.toString() ?? 'nill')),
//         // DataCell(Text(e.skills!.isNotEmpty ? e.skills![0] : '')),
//         // DataCell(Text(e.skills!.isNotEmpty ? e.skills![1] : '')),
//         // DataCell(Text(e.selectedOption?.toString() ?? '- - - -')),
//         // DataCell(Text(e.mobile.toString())),
//         // DataCell(Text(e.name.toString())),
//       ],
//     );
//   }

//   static List<DataColumn> getColumns(BuildContext context) {
//     return [
//       DataColumn(label: Text('dfsd')),
//       DataColumn(label: Text('User name')),
//       DataColumn(label: Text('User id')),
//       DataColumn(label: Text('Email id')),
//       DataColumn(label: Text('Last sign-in')),
//       DataColumn(label: Text('Contact no')),
//       DataColumn(label: Text('Address')),
//       DataColumn(label: Text('Access to')),
//       DataColumn(label: Text('Action')),
//     ];
//   }

//   @override
//   bool get isRowCountApproximate => false;

//   @override
//   int get rowCount => 0;

//   @override
//   int get selectedRowCount => 0;
// }

class SimpleCandidate {
  final String? name;
  final String? id;
  final String? mailid;
  final String? lastsignin;
  final String? contact;
  final String? address;
  final String? access;
  final Row? row;

  SimpleCandidate(
      {this.name,
      this.id,
      this.mailid,
      this.lastsignin,
      this.contact,
      this.access,
      this.address,
      this.row});
}

class SimpleCandidateListSource extends DataTableSource {
  final List<SimpleCandidate> candidates;

  SimpleCandidateListSource(
    this.candidates,
  );

  @override
  DataRow getRow(int index) {
    final candidate = candidates[index];
    return DataRow(cells: [
      DataCell(
        SizedBox(
          width: 27,
          height: 27,
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 51, 116, 53),
          ),
        ),
      ),
      DataCell(Text(candidate.name?.toString() ?? 'nill')),
      DataCell(Text(candidate.id.toString())),
      DataCell(Text(candidate.mailid.toString())),
      DataCell(Text(candidate.lastsignin.toString())),
      DataCell(Text(candidate.contact.toString())),
      DataCell(Text(candidate.address.toString())),
      DataCell(Text(candidate.access.toString())),
      DataCell(Row(
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('editicon.png')),
          SizedBox(
            width: 1.w,
          ),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('deleteicon.png')),
        ],
      ))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => candidates.length;

  @override
  int get selectedRowCount => 0;
}

final List<SimpleCandidate> simpleCandidates = [
  SimpleCandidate(
      name: 'Zenithusu',
      id: '3524154212',
      mailid: 'xyz@gmail.com',
      lastsignin: 'Last hour',
      contact: 'XXXXXXXXX',
      address: 'XXXXXXXXX',
      access: 'Trigger Booking',
      row: Row(
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('editicon.png')),
          SizedBox(
            width: 1.w,
          ),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('deleteicon.png')),
        ],
      )),
  SimpleCandidate(
      name: 'Inosuke',
      id: '3524154212',
      mailid: 'xyz@gmail.com',
      lastsignin: '2 days',
      contact: 'XXXXXXXXX',
      address: 'XXXXXXXXX',
      access: 'Contracts',
      row: Row(
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('editicon.png')),
          SizedBox(
            width: 1.w,
          ),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('deleteicon.png')),
        ],
      )),
  SimpleCandidate(
      name: 'Tengen',
      id: '3524154212',
      mailid: 'xyz@gmail.com',
      lastsignin: '1 week',
      contact: 'XXXXXXXXX',
      address: 'XXXXXXXXX',
      access: 'Booking Manager',
      row: Row(
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('editicon.png')),
          SizedBox(
            width: 1.w,
          ),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('deleteicon.png')),
        ],
      )),
  SimpleCandidate(
      name: '6 days',
      id: '3524154212',
      mailid: 'xyz@gmail.com',
      lastsignin: 'Last hour',
      contact: 'XXXXXXXXX',
      address: 'XXXXXXXXX',
      access: 'Trigger Booking',
      row: Row(
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('editicon.png')),
          SizedBox(
            width: 1.w,
          ),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Image.asset('deleteicon.png')),
        ],
      )),
];
