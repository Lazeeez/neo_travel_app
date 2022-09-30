// create a class
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'mobile_view.dart';

// create a class that accepts a List and print it
class oneRow extends StatelessWidget {
  var request;

  oneRow(this.request, {super.key});

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
                                  onPressed: () {},
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
                                          style: TextStyle(
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
                                          style: TextStyle(
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
                                          child: Text(request.city,
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
