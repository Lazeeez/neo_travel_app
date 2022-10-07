// create a class
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'list_view_mobile.dart';
import 'dart:math' as math;

// create a class that accepts a List and print it
class savedClaimRow extends StatelessWidget {
  var request;

  savedClaimRow(this.request, {super.key});

  String daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    var result = (to.difference(from).inHours / 24).round();
    return result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Row(
      children: [
        // for(var request in Approved_requests)
        Expanded(
            child: Stack(
          children: [
            // const Padding(

            Container(
                padding: const EdgeInsets.all(28),
                color: const Color.fromARGB(250, 250, 250, 255),
                child: Container(
                  decoration: const BoxDecoration(
                    // add box shadow

                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 229, 229, 229),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(0.0, 0.0), // shadow direction: bottom right
                      )
                    ],
                    color: Color.fromARGB(250, 250, 250, 255),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: const EdgeInsets.only(left: 20),
                          ),
                          Expanded(
                            child: Text(request.travelAndLodgingID,
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 12),
                                textAlign: TextAlign.left),
                          ),
                          Padding(padding: const EdgeInsets.only(top: 60)),
                          Container(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 7, bottom: 7),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 238, 244, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.save_alt_outlined,
                                      color: Color.fromRGBO(234, 78, 136, 1),
                                      size: 15),
                                  Padding(padding: EdgeInsets.only(left: 5)),
                                  Text('Saved',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(234, 78, 136, 1),
                                          fontSize: 12),
                                      textAlign: TextAlign.right),
                                ],
                              )),
                          Padding(padding: const EdgeInsets.only(right: 15)),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 70)),
                      ExpansionTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20,
                                                    top: 10,
                                                    bottom: 5),
                                                child: const Text("₹ 2322",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 12),
                                                    textAlign: TextAlign.left),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                    left: 20,
                                                    top: 10,
                                                    bottom: 5),
                                                child: const Text(
                                                    "Saved Claimed Amount",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontSize: 12),
                                                    textAlign: TextAlign.left),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]),
                                // ),
                                // Expanded(child:
                                // ExpansionTile(
                                //   title: Row(
                                //     children: [
                                //       Text('View Details',
                                //           style: TextStyle(
                                //               color: Color.fromARGB(255, 0, 0, 0),
                                //               fontSize: 12),
                                //           textAlign: TextAlign.right),
                                //           Text('View Details',
                                //           style: TextStyle(
                                //               color: Color.fromARGB(255, 0, 0, 0),
                                //               fontSize: 12),
                                //           textAlign: TextAlign.right),

                                //     ],
                                //   ),
                                //   children: [Text('text')],),
                                // // create an expansion tile
                                // )
                              ),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Text("View Details",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 12),
                                          textAlign: TextAlign.left),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                              color: Color.fromRGBO(245, 245, 245, 1),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.apartment,
                                          color: Color.fromARGB(
                                              255, 150, 150, 150),
                                          size: 22),
                                      Text("Lodging Claims",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 15),
                                          textAlign: TextAlign.left),
                                      
                                      Container(
                                        height: 20,
                                        width: 20,
                                        // color: Color.fromARGB(255, 255, 139, 180),
                                        margin: const EdgeInsets.only(right: 20),
                                        // padding: const EdgeInsets.only(right: 100, bottom: 10),
                                        
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromRGBO(250, 138, 35, 1),
                                            shape: const CircleBorder(),
                                            padding: const EdgeInsets.all(0),
                                          ),
                                          onPressed: () {print('dope');},
                                          child: Icon(Icons.edit, color: Color.fromARGB(255, 245, 245, 245), size: 15),
                                          ),
                                        ),
                                        Padding(padding: const EdgeInsets.only(right: 10)),
                                      Container(
                                        height: 30,
                                        
                                        child: ElevatedButton(
                                            
                                          onPressed:() {},
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromRGBO(255, 255, 255, 1)
                                          ),
                                          child: 
                                          RichText(
                                            text: TextSpan(
                                              
                                              children: [
                                                WidgetSpan(
                                                  child: Container(
                                                    padding: const EdgeInsets.only(right: 5, bottom: 0),
                                                    child: Icon(
                                                    Icons.attachment,
                                                    size: 17,
                                                    color: Color.fromRGBO(75, 149, 247, 1),
                                                    ),
                                                  ),
                                                ),
                                                WidgetSpan(
                                                  child: Text('View', style: TextStyle(color: Color.fromRGBO(75, 149, 247, 1), fontSize: 14),),
                                                ),
                                                
                                              ],
                                            ),
                                          ),
                                      ),
                                      )
                                      
                                    
                                    ],
                                  ),
                                  Divider(
                                    color: Color.fromRGBO(245, 245, 245, 255),
                                    thickness: 0,
                                  ),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('Expense Type', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('Boarding & Lodging', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                      Padding(padding: const EdgeInsets.only(right: 10)),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('Expense Place', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('Akkaraipatti', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Color.fromRGBO(245, 245, 245, 255),
                                    thickness: 0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('From Date', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('13 Aug 2021', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                      Padding(padding: const EdgeInsets.only(right: 10)),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('To Date', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('15 Aug 2021', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Color.fromRGBO(245, 245, 245, 255),
                                    thickness: 0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('Expense Date', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('2 Aug 2021', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                      Padding(padding: const EdgeInsets.only(right: 10)),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('Claim Amount', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text('₹ 3511', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]
                                        )
                                      ),
                                    ],
                                  )

                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                )),

            Column(
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // put row in the lower left corner

                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // put row in the lower left corner

                      children: [
                        const Padding(padding: EdgeInsets.only(top: 235)),
                        // Expanded(
                        //   child: Container (
                        //     Column (
                        //       children: [

                        // if (request.claimType == "Lodging")

                        // if (request.claimType == "Travel")
                        Container(
                          padding: const EdgeInsets.only(
                              left: 14, top: 0, right: 10),
                          child: Container(
                            // set min height
                            height: 60,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 246, 215),
                              borderRadius: BorderRadius.circular(100),
                              // borderRadius:
                              //     BorderRadius.circular(100),
                            ),
                            // padding: const EdgeInsets.only(
                            //     left: 0, top: 10),
                            // margin: const EdgeInsets.only(
                            //     left: 0, top: 10),
                            child: Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(
                                  left: 8,
                                )),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Container(
                                        padding: const EdgeInsets.all(8),
                                        // height: ,

                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              250, 250, 250, 255),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        // color: Colors.white,
                                        // padding:
                                        //     const EdgeInsets
                                        //             .only(
                                        //         bottom: 0,
                                        //         right: 0,
                                        //         left: 20),
                                        child: const Icon(Icons.airplanemode_active_outlined,
                                            color: Color.fromARGB(
                                                255, 255, 193, 22)),
                                      )),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  right: 15,
                                                  left: 7,
                                                  bottom: 5,
                                                  top: 13),
                                              child: Text("0",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8,
                                                  left: 7,
                                                  right: 15),
                                              child: Text("Travel Count",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            // set min height
                            height: 60,

                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(239, 246, 255, 1),
                              borderRadius: BorderRadius.circular(100),
                              // borderRadius:
                              //     BorderRadius.circular(100),
                            ),
                            // padding: const EdgeInsets.only(
                            //     left: 0, top: 10),
                            // margin: const EdgeInsets.only(
                            //     left: 0, top: 10),
                            child: Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(
                                  left: 8,
                                )),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Container(
                                        padding: const EdgeInsets.all(8),
                                        // height: ,

                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              250, 250, 250, 255),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        // color: Colors.white,
                                        // padding:
                                        //     const EdgeInsets
                                        //             .only(
                                        //         bottom: 0,
                                        //         right: 0,
                                        //         left: 20),
                                        child: const Icon(Icons.apartment,
                                            color: Color.fromRGBO(
                                                75, 149, 247, 1)),
                                      )),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  right: 15,
                                                  left: 7,
                                                  bottom: 5,
                                                  top: 13),
                                              child: Text("1",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  bottom: 8,
                                                  left: 7,
                                                  right: 15),
                                              child: Text("Lodging Count",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        // const Spacer(),
                        // Padding(padding: EdgeInsets.only(right: 800)),
                      ],
                    ),

                    // const Spacer(),
                    // Padding(padding: EdgeInsets.only(right: 800)),
                  ],
                ),
              ],
            ),
          ],
        ))
      ],
    ));
  }
}
