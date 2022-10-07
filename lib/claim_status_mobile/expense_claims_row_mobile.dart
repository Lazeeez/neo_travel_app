// create a class
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:neo_travel_app/claim_status_mobile/sub_row_expense_claim_mobile.dart';
import 'list_view_mobile.dart';
import 'dart:math' as math;
import 'expense_claim_sub_row_data.dart';

// create a class that accepts a List and print it
class expenseClaimRow extends StatelessWidget {
  var request;

  expenseClaimRow(this.request, {super.key});

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
                      Padding(padding: const EdgeInsets.all(7)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: const EdgeInsets.only(left: 20),
                          ),
                          Expanded(
                            child: Text(request.expenseClaimID,
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 12),
                                textAlign: TextAlign.left),
                          ),
                          Padding(padding: const EdgeInsets.only(top: 25)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: const EdgeInsets.only(left: 20),
                          ),
                          Expanded(
                            child: Text('by ' + request.approver,
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 12),
                                textAlign: TextAlign.left),
                          ),
                          // Padding(padding: const EdgeInsets.only(top: 60)),
                        ],
                      ),
                      Padding(padding: const EdgeInsets.only(top: 7)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: const EdgeInsets.only(left: 20),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(237, 250, 242, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            
                            child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 8, top: 5, bottom: 5, right: 5),
                                        child: Icon(Icons.error,
                                            color: Colors.green, size: 15),
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                                        child: const Text("Claim Status",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 12),
                                            textAlign: TextAlign.left),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          )
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
                                                    "Claimed Amount",
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
                                                  Color.fromARGB(255, 121, 186, 255),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.left),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        children: [
                          for(var request in allExpenseClaims)
                          Container(
                            padding: const EdgeInsets.all(10),
                              color: Color.fromRGBO(245, 245, 245, 1),
                              child: subRow(request),
                          )
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
                        const Padding(padding: EdgeInsets.only(top: 310)),
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
                                        child: const Icon(Icons.receipt_long_rounded,
                                            color: Color.fromRGBO(75, 149, 247, 1)),
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
                                              child: Text("₹ 3511",
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
                                                  right: 25),
                                              child: Text("Total Sanctioned Amount",
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
