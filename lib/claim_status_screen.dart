import 'package:flutter/material.dart';
import 'claim_status_data.dart';
import 'package:intl/intl.dart';
import 'claim_status_mobile.dart';
// import 'utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ClaimStatus(title: 'Flutter Demo Home Page'),
    );
  }
}

class ClaimStatus extends StatefulWidget {
  final String title;
  ClaimStatus({Key? key, required this.title}) : super(key: key);

  // pur users as allusers from data.dart
  // final List<user> users = allUsers;

  @override
  _ClaimStatusState createState() => _ClaimStatusState();
}

class _ClaimStatusState extends State<ClaimStatus> {
  List users = allUsers;
  List Original_users = allUsers;
  var active_filter = 'All';
  

  // calculate requests of status approved from allUsers
 String approvedRequests() {
    int approved = 0;
    for (var i = 0; i < Original_users.length; i++) {
      if (Original_users[i].statusSimple == 'Approved') {
        approved++;
      }
    }
    return approved.toString();
  }

  String pendingRequests() {
    int approved = 0;
    for (var i = 0; i < Original_users.length; i++) {
      if (Original_users[i].statusSimple == 'Pending') {
        approved++;
      }
    }
    return approved.toString();
  }

  String rejectedRequests() {
    int approved = 0;
    for (var i = 0; i < Original_users.length; i++) {
      if (Original_users[i].statusSimple == 'Rejected') {
        approved++;
      }
    }
    return approved.toString();
  }  

  String allRequests() {
    int requests = 0;
    for (var i = 0; i < Original_users.length; i++) {
     
      requests++;
      
    }
    return requests.toString();
  } 

  final columns = [
    'Lodging Request Status',
    'City',
    'From Date',
    'To Date',
    'Travel Purpose',
    'Other Travel Purpose',
    'Sharing Employee 1',
    'Sharing Employee 2',
    'Other Details'
  ];

  // make a const list
  final List<String> status = const [
    'Single',
    'Married',
    'Divorced',
    'Widowed',
    'Separated',
    'Other'
  ];

  Size get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   // align left
        //   centerTitle: false,
        //   leading: const Icon(Icons.menu),
        //   title: const Text('Intercity Travel and Lodging Details',
        //       style:
        //           TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        //       textAlign: TextAlign.left),
        // ),

        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 18),
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: const Text("Claim Status",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
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
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),

                  // children: [
                ]),
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 18),
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        List filtered_list = applyFilter('All');
                                        
                                        setState(() {
                                          active_filter = 'All';
                                          users = filtered_list;
                                        });

                                        
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
                                          const Text('All',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 17),
                                              textAlign: TextAlign.right),
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10)),
                                          // create an eliptical container
                                          Container(
                                            constraints: const BoxConstraints(
                                              minHeight: 20, //minimum height
                                              minWidth: 25,
                                            ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(allRequests(),
                                                style: TextStyle(
                                                  // color: Color(0xFFFFFFFF)
                                                    color: Colors.white,
                                                    fontSize: 14),
                                                textAlign: TextAlign.center),
                                            padding: const EdgeInsets.only(
                                                top: 2,
                                                bottom: 2,
                                                left: 5,
                                                right: 5),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        List filtered_list = applyFilter('Pending');
                                        
                                        setState(() {
                                          active_filter = 'Pending';
                                          users = filtered_list;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.transparent,
                                          backgroundColor: const Color.fromARGB(
                                              250, 250, 250, 255)),
                                      child: Row(
                                        children: [
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, bottom: 25)),
                                          const Text('Pending',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 216, 219, 26),
                                                  fontSize: 17),
                                              textAlign: TextAlign.right),
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10)),
                                          Container(
                                            constraints: const BoxConstraints(
                                              minHeight: 20, //minimum height
                                              minWidth: 25,
                                            ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: const Color.fromARGB(
                                                  255, 216, 219, 26),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(pendingRequests(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                                textAlign: TextAlign.center),
                                            padding: const EdgeInsets.only(
                                                top: 2,
                                                bottom: 2,
                                                left: 5,
                                                right: 5),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        List filtered_list = applyFilter('Rejected');
                                        
                                        setState(() {
                                          active_filter = 'Rejected';
                                          users = filtered_list;
                                        });
                                        
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.transparent,
                                          backgroundColor: const Color.fromARGB(
                                              250, 250, 250, 255)),
                                      child: Row(
                                        children: [
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, bottom: 25)),
                                          const Text('Rejected',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 17),
                                              textAlign: TextAlign.right),
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10)),
                                          Container(
                                            // keep adapting the size of the container
                                            // width: double.infinity,
                                            // height: 20,
                                            constraints: const BoxConstraints(
                                              minHeight: 20, //minimum height
                                              minWidth: 25,
                                            ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(rejectedRequests(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                                textAlign: TextAlign.center),
                                            padding: const EdgeInsets.only(
                                                top: 2,
                                                bottom: 2,
                                                left: 5,
                                                right: 5),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        List filtered_list = applyFilter('Approved');
                                        
                                        setState(() {
                                          active_filter = 'Approved';
                                          users = filtered_list;
                                        });

                                        
                                      
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.transparent,
                                          backgroundColor: const Color.fromARGB(
                                              250, 250, 250, 255)),
                                      child: Row(
                                        children: [
                                          const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, bottom: 25)),
                                          const Text('Approved',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 17),
                                              textAlign: TextAlign.right),
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10)),
                                          Container(
                                            constraints: const BoxConstraints(
                                              minHeight: 20, //minimum height
                                              minWidth: 25,
                                            ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(approvedRequests(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                                textAlign: TextAlign.center),
                                            padding: const EdgeInsets.only(
                                                top: 2,
                                                bottom: 2,
                                                left: 5,
                                                right: 5),
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
                        Expanded(
                          // flex: 0,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 18),
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {

                                        setState(() {
                                          users = applyFilter("Saved");
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.transparent,
                                          backgroundColor: const Color.fromARGB(
                                              250, 250, 250, 255)),
                                      child: Row(
                                        children: const [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, bottom: 25)),
                                          Icon(
                                            Icons.save_alt_outlined,
                                            color: Colors.black,
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10)),
                                          Text('Saved Claims',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 17),
                                              textAlign: TextAlign.right),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10)),
                                          // create an eliptical container
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
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),

                  

                  // children: [
                ]), 
                
      for(var request in users)
      
      Row(children: [
                  // Container(
                  // height: 1000,
                  // width: 1000,
                  Expanded(
                      child: Stack(children: [
                                    const Padding(
                                        padding: EdgeInsets.only(left: 20)),
                                    Container(
                                      padding: const EdgeInsets.all(28),
                                      color: Color.fromARGB(250, 250, 250, 255),
                                      child: Container(
                                          decoration: const BoxDecoration(
                                            // add box shadow
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(255, 229, 229, 229),
                                                blurRadius: 5.0,
                                                spreadRadius: 0.0,
                                                offset: Offset(0.0,
                                                    0.0), // shadow direction: bottom right
                                              )
                                            ],
                                            color: Color.fromARGB(
                                                250, 250, 250, 255),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                topRight: Radius.circular(8)),
                                          ),
                                          child: Column(
                                            children: [
                                              
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      decoration: BoxDecoration(
                                                        color: const Color
                                                                .fromARGB(
                                                            250, 250, 250, 255),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              top: 10),
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              top: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                WidgetSpan(
                                                                  child:
                                                                  
                                                                      Container(
                                                                    padding: const EdgeInsets
                                                                            .only(left: 45, top: 10, bottom: 10, right: 10),
                                                                    
                                                                    child: Text(
                                                                        request.expenseClaimID +  "  ·  " +  request.travelAndLodgingID,
                                                                        style: TextStyle(
                                                                            color: Color.fromARGB(255, 54, 165, 255),
                                                                            
                                                                            fontSize:
                                                                                17),
                                                                        textAlign:
                                                                            TextAlign.left),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  

                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromARGB(
                                                              250,
                                                              250,
                                                              250,
                                                              255),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10, top: 10, right: 10),
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 10, top: 10, right: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(5),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                    color: Color.fromARGB(255, 255, 246, 217),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment
                                                                        .center,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 5)),
                                                                        Icon(
                                                                            Icons
                                                                                .info_sharp,
                                                                            color: Color.fromARGB(
                                                                                255, 200, 150, 40)),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 3)),
                                                                        Text(
                                                                            request.status,
                                                                            style: TextStyle(
                                                                                color: Color.fromARGB(255, 200, 150, 40),
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 17),
                                                                            textAlign: TextAlign.center),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(right: 5)),
                                                                      ]),
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
                                                        color: const Color
                                                                .fromARGB(
                                                            250, 250, 250, 255),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 45,
                                                              top: 10),
                                                      margin:
                                                          const EdgeInsets.only(
                                                              left: 20,
                                                              top: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                WidgetSpan(
                                                                  child:
                                                                      Container(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            10),
                                                                    child: Text(
                                                                        request.city,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black,
                                                                            
                                                                            fontSize:
                                                                                21),
                                                                        textAlign:
                                                                            TextAlign.left),
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
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10)),
                                              const Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 10, bottom: 95, right: 10)),
                                            ],
                                          ),
                                        ),
                                      
                                    ),
                              
                                    // Expanded (
                                    //   child: Container (
                                    // //     padding: const EdgeInsets.only(
                                    // //         right: 1000, top: 132),
                                    //     child:
                                    // Padding(padding: EdgeInsets.only(top: 574)),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      // put row in the lower left corner
                                      
                                      children: [
                                        Padding(padding: EdgeInsets.only(top: 230)),
                                        // Expanded(
                                        //   child: Container (
                                        //     Column (
                                        //       children: [
  
                                        if (request.claimType == "Lodging")      
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 17, top: 0, right: 10),
                                              
                                          child: Container(
                                            
                                              decoration: BoxDecoration(
                                                
                                                color: Color.fromARGB(255, 215, 250, 255),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              // padding: const EdgeInsets.only(
                                              //     left: 0, top: 10),
                                              // margin: const EdgeInsets.only(
                                              //     left: 0, top: 10),
                                              child: Row(children: [
                                                Padding( 
                                                    padding: EdgeInsets.only(
                                                        left: 10)),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    
                                                    RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          // Padding(padding: EdgeInsets.only(left: 10)),
                                                          WidgetSpan(
                                                              child: Container(
                                                                padding: const EdgeInsets
                                                                        .all(10),
                                                                height: 45,
                                                            
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  250,
                                                                  250,
                                                                  250,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                            ),
                                                            // color: Colors.white,
                                                            // padding:
                                                            //     const EdgeInsets
                                                            //             .only(
                                                            //         bottom: 0,
                                                            //         right: 0,
                                                            //         left: 20),
                                                            child: const Icon(
                                                                Icons.apartment,
                                                                color: Color.fromARGB(255, 22, 158, 255)),
                                                          )),
                                                        ],
                                                      ),
                                                    ),


                                                    
                                                  ],
                                                ),
                                                Container(
                                                    padding:
                                                        const EdgeInsets.only(left: 10, top: 5),
                                                    margin:
                                                        const EdgeInsets.only(left: 10, top: 5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          10, right: 10),
                                                                  child: Text(
                                                                      DateFormat('yMMMd').format(DateTime.parse(request.fromDate)) + " - " + DateFormat('yMMMd').format(DateTime.parse(request.toDate)),
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                ),
                                                              ),
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          10, right: 50),
                                                                  child: Text(
                                                                      "(" + DateFormat('E').format(DateTime.parse(request.fromDate)) + " - " + DateFormat('E').format(DateTime.parse(request.toDate)) + ")",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding:
                                                        const EdgeInsets.only(bottom: 5),
                                                    margin:
                                                        const EdgeInsets.only(bottom: 5),
                                                                  child: Text(
                                                                      daysBetween((DateTime.parse(request.fromDate)), (DateTime.parse(request.toDate))) + " days",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  
                                                ),
                                              ])),
                                        ),
                                        if (request.claimType == "Travel")
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 17, top: 0, right: 10),
                                              
                                          child: Container(
                                            
                                              decoration: BoxDecoration(
                                                
                                                color: Color.fromARGB(255, 255, 246, 215),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              // padding: const EdgeInsets.only(
                                              //     left: 0, top: 10),
                                              // margin: const EdgeInsets.only(
                                              //     left: 0, top: 10),
                                              child: Row(children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10)),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    
                                                    RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          // Padding(padding: EdgeInsets.only(left: 10)),
                                                          WidgetSpan(
                                                              child: Container(
                                                                padding: const EdgeInsets
                                                                        .all(10),
                                                                height: 45,
                                                            
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  250,
                                                                  250,
                                                                  250,
                                                                  255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                            ),
                                                            // color: Colors.white,
                                                            // padding:
                                                            //     const EdgeInsets
                                                            //             .only(
                                                            //         bottom: 0,
                                                            //         right: 0,
                                                            //         left: 20),
                                                            child: const Icon(
                                                                Icons.directions_bus,
                                                                color: Color.fromARGB(255, 255, 193, 22)),
                                                          )),
                                                        ],
                                                      ),
                                                    ),


                                                    
                                                  ],
                                                ),
                                                Container(
                                                    padding:
                                                        const EdgeInsets.only(left: 10, top: 5),
                                                    margin:
                                                        const EdgeInsets.only(left: 10, top: 5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          10, right: 10),
                                                                  child: Text(
                                                                      DateFormat('yMMMd').format(DateTime.parse(request.fromDate)) + " - " + DateFormat('yMMMd').format(DateTime.parse(request.toDate)),
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                ),
                                                              ),
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          10, right: 50),
                                                                  child: Text(
                                                                      "(" + DateFormat('E').format(DateTime.parse(request.fromDate)) + " - " + DateFormat('E').format(DateTime.parse(request.toDate)) + ")",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding:
                                                        const EdgeInsets.only(bottom: 5),
                                                    margin:
                                                        const EdgeInsets.only(bottom: 5),
                                                                  child: Text(
                                                                      daysBetween((DateTime.parse(request.fromDate)), (DateTime.parse(request.toDate))) + " days",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  
                                                ),
                                              ])),
                                        ),
                                        const Spacer(),
                                        // Padding(padding: EdgeInsets.only(right: 800)),
                                        Padding(padding: const EdgeInsets.only(top: 0)),
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(0, 0, 0, 255),
                                              // borderRadius:
                                              //     BorderRadius.circular(100),
                                            ),
                                            padding: const EdgeInsets.only(
                                              left: 17, right: 10),
                                            // margin: const EdgeInsets.all(10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                // Padding(padding: const EdgeInsets.only(left: 480)),
                                                if (request.claimAmount != "")
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      // put shadow only on the left side
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.2),
                                                          spreadRadius: 0,
                                                          blurRadius: 0,
                                                          offset: Offset(-2,
                                                              0), // changes position of shadow
                                                        ),
                                                      ],
                                                      color:
                                                          Color.fromARGB(250, 250, 250, 255),
                                                    
                                                    ),
                                                    
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top:
                                                                          10, right: 10),
                                                                  child: Text(
                                                                      "₹ " + request.claimAmount,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          10, right: 10),
                                                                  child: const Text(
                                                                      "Claimed Amount",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              15),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        

                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                if (request.amountToBeReimbursed != "")
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      // put shadow only on the left side
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.2),
                                                          spreadRadius: 0,
                                                          blurRadius: 0,
                                                          offset: Offset(-2,
                                                              0), // changes position of shadow
                                                        ),
                                                      ],
                                                      color:
                                                          const Color.fromARGB(
                                                              252,
                                                              252,
                                                              252,
                                                              255),
                                                    
                                                    ),
                                                    
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top:
                                                                          10, right: 10),
                                                                  child: Text(
                                                                      "₹ " + request.amountToBeReimbursed,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          10, right: 10),
                                                                  child: const Text(
                                                                      "Amount to be Reimbursed",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              15),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        

                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                if (request.totalSanctionedAmount != "")
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      // put shadow only on the left side
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.2),
                                                          spreadRadius: 0,
                                                          blurRadius: 0,
                                                          offset: Offset(-2,
                                                              0), // changes position of shadow
                                                        ),
                                                      ],
                                                      color:
                                                          const Color.fromARGB(
                                                              252,
                                                              252,
                                                              252,
                                                              255),
                                                    
                                                    ),
                                                    
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    margin:
                                                        const EdgeInsets.all(5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      top:
                                                                          10, right: 10),
                                                                  child: Text(
                                                                      "₹ " + request.totalSanctionedAmount,
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize:
                                                                              17),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            children: [
                                                              WidgetSpan(
                                                                child:
                                                                    Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          10, right: 10),
                                                                  child: const Text(
                                                                      "Total Sanctioned Amount",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              15),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        

                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                // Padding(padding: const EdgeInsets.only(right: 10)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(right: 20)),

                                        
                                      ],
                                    ),
                                    // Padding(padding: EdgeInsets.only(right: 1000)),

                                    const Padding(
                                        padding: EdgeInsets.only(left: 20)),
                                  ]))
      ]),               
    
                // call search text widget
                
              
                
                
                
            ]))
    );
  }

  Widget buildDataTable(String field) {
    String colName = field;

    // return the data from allUsers in container
    return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        margin: const EdgeInsets.only(left: 25.0),
        child: Row(
          children: [
            for (var user in allUsers)
              Row(children: [
                Container(
                  padding: const EdgeInsets.only(right: 40),
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Text(user.city,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 59, 59, 59),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left),
                )
              ]),
          ],
        ));
  }

  List applyFilter(String active_filter) {
    List filteredList = [];
    if (active_filter == "All") {
      filteredList = allUsers;
    } else {
      for (var user in allUsers) {
        if (user.statusSimple == active_filter) {
          filteredList.add(user);
        }
      }
    }
    return filteredList;
  }


  String daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  var result = (to.difference(from).inHours / 24).round();
  return result.toString();
  }

  List<DataColumn> getColumns(List<String> columns) {
    return columns
        .map(
          (String column) => DataColumn(
            label: Container(width: 150, child: Text(column)),
          ),
        )
        .toList();
  }
}
