// create a class
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:overlay_support/overlay_support.dart';
import 'expense_claims_row_mobile.dart';
import 'list_view_mobile.dart';
import 'claim_status_data.dart';

// create a class that accepts a List and print it
class claimStatusRowMobile extends StatelessWidget {
  var request;
  List users = allUsers;

  claimStatusRowMobile(this.request, {super.key});

  String daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    var result = (to.difference(from).inHours / 24).round();
    return result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Material( child: Row(
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
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(250, 250, 250, 255),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    showOverlay((context, t) {
                                      // add padding
                                      return Padding(
                                          // set padding as much as appbar height
                                          padding: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .padding
                                                      .top +
                                                  kToolbarHeight),
                                          // padding: EdgeInsets.only(
                                          //     top: screen_height * 0.11),
                                          // padding: const EdgeInsets.only(top:
                                          child: Container(
                                              padding:
                                                  const EdgeInsets.only(left: 70),
                                              color: Color.lerp(
                                                  Colors.transparent,
                                                  Colors.black54,
                                                  t),
                                              child: FractionalTranslation(
                                                translation: Offset.lerp(
                                                    const Offset(1, 0),
                                                    const Offset(0, 0),
                                                    t)!,
                                                child: Container(
                                                    color: const Color.fromARGB(
                                                        255, 250, 250, 250),
                                                    child: SingleChildScrollView(
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 220)),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  WidgetSpan(
                                                                    child:
                                                                        Container(
                                                                            padding: const EdgeInsets.only(
                                                                                left:
                                                                                    30,
                                                                                top:
                                                                                    25),
                                                                            child:
                                                                                const DefaultTextStyle(
                                                                              style: TextStyle(
                                                                                  color: Colors.black,
                                                                                  fontSize: 18,
                                                                                  fontWeight: FontWeight.bold),
                                                                              child:
                                                                                  Text('Expense Claims', textAlign: TextAlign.left),
                                                                            )),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 10,
                                                                      top: 25),
                                                              child:
                                                                  ElevatedButton(
                                                                      onPressed:
                                                                          () {
                                                                        OverlaySupportEntry.of(
                                                                                context)!
                                                                            .dismiss();
                                                                      },
                                                                      style: ElevatedButton
                                                                          .styleFrom(
                                                                        // disable shadows
                                                                        shadowColor:
                                                                            Colors
                                                                                .transparent,
                                                                        backgroundColor: const Color
                                                                                .fromARGB(
                                                                            255,
                                                                            250,
                                                                            250,
                                                                            250),
                                                                      ),
                                                                      child: const Icon(
                                                                          Icons
                                                                              .close,
                                                                          color: Color.fromRGBO(
                                                                              124,
                                                                              128,
                                                                              134,
                                                                              1))
                                                                      // change color

                                                                      ),
                                                            )
                                                          ],
                                                        ),
                                                        const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 250)
                                                        ),


                                                        Row(
                                                          children: [
                                                            Padding(padding: const EdgeInsets.only(left: 30)),
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                color: Color.fromARGB(218, 225, 225, 225),
                                                                borderRadius: BorderRadius.circular(8),
                                                              ),
                                                              
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(10),
                                                              child: Icon(Icons.location_on_outlined, color: Color.fromARGB(121, 48, 48, 48), size: 20),
                                                            ),
                                                            // Padding(padding: const EdgeInsets.only(left: 10)),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                DefaultTextStyle(
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                  child: RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        WidgetSpan(
                                                                          child: Container(
                                                                            padding: const EdgeInsets.only(
                                                                                left: 10,
                                                                                top: 10,
                                                                                bottom: 5),
                                                                            child: Text(request.from_city,
                                                                                style: TextStyle(
                                                                                    color: Color.fromARGB(
                                                                                        255, 0, 0, 0),
                                                                                    fontSize: 12),
                                                                                textAlign: TextAlign.left),
                                                                          ),
                                                                        ),
                                                                        if (request.to_city != '')
                                                                        WidgetSpan(
                                                                          child: Container(
                                                                            padding: const EdgeInsets.only(
                                                                                
                                                                                top: 10,
                                                                                bottom: 5),
                                                                            child: Text(" - " + request.to_city,
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
                                                                ),
                                                                Padding(padding: const EdgeInsets.only(bottom: 5)),
                                                                DefaultTextStyle(
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                  child: RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        WidgetSpan(
                                                                          child: Container(
                                                                            padding: const EdgeInsets.only(
                                                                                
                                                                                left: 10),
                                                                            child: Text(
                                                                                "${DateFormat('yMMMd').format(DateTime.parse(request.fromDate))} - ${DateFormat('yMMMd').format(DateTime.parse(request.toDate))}",
                                                                                style: const TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontWeight:
                                                                                        FontWeight.bold,
                                                                                    fontSize: 12),
                                                                                textAlign: TextAlign.left),
                                                                          ),
                                                                        ),
                                                                        WidgetSpan(
                                                                          child: Container(
                                                                            
                                                                            child: Text(
                                                                                "(${DateFormat('E').format(DateTime.parse(request.fromDate))} - ${DateFormat('E').format(DateTime.parse(request.toDate))})",
                                                                                style: const TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 12),
                                                                                textAlign: TextAlign.left),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(padding: const EdgeInsets.only(bottom: 10)),
                                                              ],
                                                            )
                                                          ],
                                                          
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                  Container(
                                                                      padding: const EdgeInsets.only(
                                                                          left: 30,
                                                                          top:
                                                                              15),
                                                                      child:
                                                                          const DefaultTextStyle(
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 18,
                                                                            fontWeight: FontWeight.bold),
                                                                        child:
                                                                            Text('Claim History', textAlign: TextAlign.left),
                                                                      )),
                                                              ),
                                                            ],
                                                          ),
                                                        ),



                                                        const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 250)
                                                        ),

                                                        for (var request in users)
                                                          expenseClaimRow(request)
                                                      ],
                                                    ))),
                                              )));
                                    }, duration: Duration.zero);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      // disable shadows
                                      shadowColor: Colors.transparent,
                                      backgroundColor: const Color.fromARGB(
                                          250, 250, 250, 255)),
                                  child: Row(
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 25, bottom: 25)),
                                      Text(request.expenseClaimID,
                                          style: const TextStyle(
                                              color: Colors.blue, fontSize: 12),
                                          textAlign: TextAlign.right),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(250, 250, 250, 255),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MobileView(title: request.travelAndLodgingID)),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      // disable shadows
                                      shadowColor: Colors.transparent,
                                      backgroundColor: const Color.fromARGB(
                                          250, 250, 250, 255)),
                                  child: Row(
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 25, bottom: 25)),
                                      Text(request.travelAndLodgingID,
                                          style: const TextStyle(
                                              color: Colors.blue, fontSize: 12),
                                          textAlign: TextAlign.right),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(250, 250, 250, 255),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            // padding:
                            //     const EdgeInsets.only(
                            //         left: 45,
                            //         top: 10),
                            margin: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          child: Text(request.from_city,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 28),
                                              textAlign: TextAlign.left),
                                        ),
                                      ),
                                      if (request.to_city != '')
                                      WidgetSpan(
                                        child: Container(
                                          child: Text(' - ' + request.to_city,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 28),
                                              textAlign: TextAlign.left),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(250, 250, 250, 255),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            // padding:
                            //     const EdgeInsets.only(
                            //         left: 45,
                            //         top: 10),
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              bottom: 8, right: 5),
                                          child: const Icon(
                                            Icons.info_sharp,
                                            color: Color.fromARGB(
                                                255, 180, 160, 111),
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text(request.status,
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 187, 149, 109),
                                                  fontSize: 16),
                                              textAlign: TextAlign.left),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 70)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 10, bottom: 5),
                                      child: const Text("Claimed Amount",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 12),
                                          textAlign: TextAlign.left),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        color: const Color.fromARGB(
                                            250, 250, 250, 255),
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 10, bottom: 5),
                                        child: Text("₹" + request.claimAmount,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
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
                      const Divider(
                        height: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Color.fromARGB(255, 195, 195, 195),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10, bottom: 5),
                                        child: const Text("Sanctioned Amount",
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
                            ],
                          ),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 10, bottom: 5),
                                        child: Text(
                                            "₹" + request.totalSanctionedAmount,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
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
                      const Divider(
                        height: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Color.fromARGB(255, 195, 195, 195),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10, bottom: 5),
                                        child: const Text(
                                            "Amount to be Reimbursed",
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
                            ],
                          ),
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 10, bottom: 5),
                                        child: Text(
                                            "₹" + request.amountToBeReimbursed,
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
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
                      const Padding(padding: EdgeInsets.only(bottom: 15)),
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
                        const Padding(padding: EdgeInsets.only(top: 365)),
                        // Expanded(
                        //   child: Container (
                        //     Column (
                        //       children: [

                        if (request.claimType == "Lodging")
                        Container(
                          padding: const EdgeInsets.only(
                              left: 14, top: 0, right: 10),
                          child: Container(
                            // set min height
                            height: 60,

                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(239,246,255,1),
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
                                                75,149,247,1)),
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
                                                  right: 10,
                                                  left: 10,
                                                  bottom: 5,
                                                  top: 13),
                                              child: Text(
                                                  "${DateFormat('yMMMd').format(DateTime.parse(request.fromDate))} - ${DateFormat('yMMMd').format(DateTime.parse(request.toDate))}",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  top: 13,
                                                  right: 25,
                                                  bottom: 5),
                                              child: Text(
                                                  "(${DateFormat('E').format(DateTime.parse(request.fromDate))} - ${DateFormat('E').format(DateTime.parse(request.toDate))})",
                                                  style: const TextStyle(
                                                      color: Colors.black,
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
                                                  bottom: 8, left: 10),
                                              child: Text(
                                                  "${daysBetween((DateTime.parse(request.fromDate)), (DateTime.parse(request.toDate)))} days",
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

                        if (request.claimType == "Travel")
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
                                        child: const Icon(Icons.directions_bus,
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
                                                  right: 10,
                                                  left: 10,
                                                  bottom: 5,
                                                  top: 13),
                                              child: Text(
                                                  "${DateFormat('yMMMd').format(DateTime.parse(request.fromDate))} - ${DateFormat('yMMMd').format(DateTime.parse(request.toDate))}",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12),
                                                  textAlign: TextAlign.left),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  top: 13,
                                                  right: 25,
                                                  bottom: 5),
                                              child: Text(
                                                  "(${DateFormat('E').format(DateTime.parse(request.fromDate))} - ${DateFormat('E').format(DateTime.parse(request.toDate))})",
                                                  style: const TextStyle(
                                                      color: Colors.black,
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
                                                  bottom: 8, left: 10),
                                              child: Text(
                                                  "${daysBetween((DateTime.parse(request.fromDate)), (DateTime.parse(request.toDate)))} days",
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
    )
    );
  }
}
