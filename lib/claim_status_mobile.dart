// import 'package:flutter/material.dart';
// import 'claim_status_data.dart';
// import 'package:intl/intl.dart';
// import 'claim_status_mobile.dart';
// import 'claim_status_row.dart';
// import 'drawer.dart';
// import 'utils.dart';
// import 'package:overlay_support/overlay_support.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: ClaimStatus(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class ClaimStatus extends StatefulWidget {
//   final String title;
//   ClaimStatus({Key? key, required this.title}) : super(key: key);

//   // pur users as allusers from data.dart
//   // final List<user> users = allUsers;

//   @override
//   _ClaimStatusState createState() => _ClaimStatusState();
// }

// class _ClaimStatusState extends State<ClaimStatus> with TickerProviderStateMixin {
//   List users = allUsers;
//   List Approved_requests = [];
//   List Pending_requests = [];
//   List Rejected_requests = [];
//   List Original_users = allUsers;
//   var active_filter = 'All';

//   @override
//   initState() {
//     super.initState();
//     setState(() {
//       for (var i = 0; i < users.length; i++) {
//         if (users[i].status == 'Approved') {
//           Approved_requests.add(users[i]);
//         } else if (users[i].status == 'Pending') {
//           Pending_requests.add(users[i]);
//         } else if (users[i].status == 'Rejected') {
//           Rejected_requests.add(users[i]);
//         }
//       }
//     });
//   }

//   // calculate requests of status approved from allUsers
//   String approvedRequests() {
//     int approved = 0;
//     for (var i = 0; i < Original_users.length; i++) {
//       if (Original_users[i].statusSimple == 'Approved') {
//         approved++;
//       }
//     }
//     return approved.toString();
//   }

//   String pendingRequests() {
//     int approved = 0;
//     for (var i = 0; i < Original_users.length; i++) {
//       if (Original_users[i].statusSimple == 'Pending') {
//         approved++;
//       }
//     }
//     return approved.toString();
//   }

//   String rejectedRequests() {
//     int approved = 0;
//     for (var i = 0; i < Original_users.length; i++) {
//       if (Original_users[i].statusSimple == 'Rejected') {
//         approved++;
//       }
//     }
//     return approved.toString();
//   }

//   String allRequests() {
//     int requests = 0;
//     for (var i = 0; i < Original_users.length; i++) {
//       requests++;
//     }
//     return requests.toString();
//   }

//   final columns = [
//     'Lodging Request Status',
//     'City',
//     'From Date',
//     'To Date',
//     'Travel Purpose',
//     'Other Travel Purpose',
//     'Sharing Employee 1',
//     'Sharing Employee 2',
//     'Other Details'
//   ];

//   // make a const list
//   final List<String> status = const [
//     'Single',
//     'Married',


//     'Divorced',
//     'Widowed',
//     'Separated',
//     'Other'
//   ];

//   Size get size => MediaQuery.of(context).size;

//   @override
//   Widget build(BuildContext context) {
    
    
//     var controller =
//         AnimationController(vsync: this, duration: Duration(seconds: 1));

//     var offset = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
//         .animate(controller);


//     return Material(
//     child: DefaultTabController(
//         initialIndex: 1,
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             title: //Transform(
//               // you can forcefully translate values left side using Transform
//               // transform: Matrix4.translationValues(-130.0, 0.0, 0.0),
//               //child: 
//               Text(
//                 "Neo",
//               ),
//           ),

//           body: 
//           Stack(
//       children: [
          
//           Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
                  
//                   RichText(
//                     text: TextSpan(
//                       children: [
//                         WidgetSpan(
//                           child: Container(
//                             padding: const EdgeInsets.only(left: 20),
//                             child: Text('Claim Status',
//                                 style: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold),
//                                 textAlign: TextAlign.left),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Stack(
//                     children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         showOverlay((context, t) {
//                           return Container(
//                             padding: const EdgeInsets.only(left: 100),
//                             color: Color.lerp(Colors.transparent, Colors.black54, t),
//                             child: FractionalTranslation(
//                               translation: Offset.lerp(
//                                   const Offset(1, 0), const Offset(0, 0), t)!,
//                               child: Column(
//                                 children:
//                                 [
//                                   ElevatedButton(onPressed: () {
//                                     OverlaySupportEntry.of(context)!.dismiss();
//                                   }, child: Icon(Icons.close)),
//                                   Container(
//                                     color: Colors.red,
//                                     child: Text('Box 1'),
//                                   ),
//                                   Container(
//                                     color: Colors.red,
//                                     child: Text('Box 1'),
//                                   ),
//                                 ]
//                               ),
//                             ),
//                           );
//                         }, duration: Duration.zero);
                            

//                       }, 
//                       style: ElevatedButton.styleFrom(
//                                         // disable shadows
//                                         shadowColor: Colors.transparent,
//                                         backgroundColor: const Color.fromARGB(
//                                             250, 250, 250, 255)),
//                       child: Row(
                        
//                         children: [
//                           Icon(
//                             // make icon grey
//                             Icons.save_rounded,
//                             color: Color.fromRGBO(124, 128, 134, 1)
//                           ),
                            
//                           Padding(padding: 
//                           EdgeInsets.only(left: 5, bottom: 60)),
//                           Text('Saved Claims',
//                                             style: TextStyle(
//                                                 color: Color.fromRGBO(124, 128, 134, 1), fontSize: 12),
//                                             textAlign: TextAlign.right), 
//                         ],
//                       )
//                     ),
//                   ]),
//                 ],
//               ),
//               TabBar(
//               // indicatorSize: TabBarIndicatorSize.label,
//               tabs: <Widget>[
                
//                 Wrap(
//                   // increase height of the tab
//                   children: [
            
//                     Text('All',
//                       style: TextStyle(
//                           color: Color.fromRGBO(124, 128, 134, 1), fontSize: 12),
//                       textAlign: TextAlign.right),  
//                     Padding(padding: EdgeInsets.only(left: 5)),           
//                     Container(
//                       constraints: BoxConstraints(
//                         minWidth: 20,
//                         minHeight: 12,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(75, 149, 247, 1),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: EdgeInsets.only(left: 7, right: 5),
//                       child: Text(
//                         allRequests(),
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     )
//                   ]
//                 ),
//                 Wrap(
//                   children: [
//                     Text('Pending',
//                       style: TextStyle(
//                           color: Color.fromRGBO(124, 128, 134, 1), fontSize: 12),
//                       textAlign: TextAlign.right),
//                     Padding(padding: EdgeInsets.only(left: 5)),           
//                     Container(
//                       constraints: BoxConstraints(
//                         minWidth: 20,
//                         minHeight: 12,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(75, 149, 247, 1),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: EdgeInsets.only(left: 7, right: 5),
//                       child: Text(
//                         pendingRequests(),
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     )
//                   ]
//                 ),
//                 Wrap(
//                   children: [
//                     Text('Rejected',
//                       style: TextStyle(
//                           color: Color.fromRGBO(124, 128, 134, 1), fontSize: 12),
//                       textAlign: TextAlign.right),  
//                     Padding(padding: EdgeInsets.only(left: 5)),           
//                     Container(
//                       constraints: BoxConstraints(
//                         minWidth: 20,
//                         minHeight: 12,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(75, 149, 247, 1),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: EdgeInsets.only(left: 6, right: 5),
//                       child: Text(
//                         rejectedRequests(),
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     )
//                   ]
//                 ),
//                 Wrap(
//                   children: [
//                     Text('Approved',
//                       style: TextStyle(
//                           color: Color.fromRGBO(124, 128, 134, 1), fontSize: 12),
//                       textAlign: TextAlign.right),  
//                     Padding(padding: EdgeInsets.only(left: 5)),           
                    
//                     Container(
//                       constraints: BoxConstraints(
//                         minWidth: 20,
//                         minHeight: 12,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Color.fromRGBO(75, 149, 247, 1),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       padding: EdgeInsets.only(left: 6, right: 5),
//                       child: Text(
//                         approvedRequests(),
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 12,
//                         ),
//                       ),
//                     )
//                   ]
//                 ),
//               ],
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: <Widget>[
//                   SingleChildScrollView(
//                     child: Column (
//                       children: [
//                         for (var test in allUsers)
//                         oneRow(test)
//                       ],
//                     )
//                   ),
//                   SingleChildScrollView(
//                     child: Column (
//                       children: [
//                         for (var test in Pending_requests)
//                         oneRow(test)
//                       ],
//                     )
//                   ),
//                   SingleChildScrollView(
//                     child: Column (
//                       children: [
//                         for (var test in Rejected_requests)
//                         oneRow(test)
//                       ],
//                     )
//                   ),
//                   SingleChildScrollView(
//                     child: Column (
//                       children: [
//                         for (var test in Approved_requests)
//                         oneRow(test)
//                       ],
//                     )
//                   ),
//                 ],
//               ),
//             )
//             ],
//           ),
//       ])
//         )));
//   }

//   Widget buildDataTable(String field) {
//     String colName = field;

//     // return the data from allUsers in container
//     return Container(
//         padding: const EdgeInsets.only(top: 20, bottom: 20),
//         margin: const EdgeInsets.only(left: 25.0),
//         child: Row(
//           children: [
//             for (var user in allUsers)
//               Row(children: [
//                 Container(
//                   padding: const EdgeInsets.only(right: 40),
//                   margin: const EdgeInsets.only(left: 20.0),
//                   child: Text(user.city,
//                       style: const TextStyle(
//                           color: Color.fromARGB(255, 59, 59, 59),
//                           fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.left),
//                 )
//               ]),
//           ],
//         ));
//   }

//   List applyFilter(String active_filter) {
//     List filteredList = [];
//     if (active_filter == "All") {
//       filteredList = allUsers;
//     } else {
//       for (var user in allUsers) {
//         if (user.statusSimple == active_filter) {
//           filteredList.add(user);
//         }
//       }
//     }
//     return filteredList;
//   }

//   String daysBetween(DateTime from, DateTime to) {
//     from = DateTime(from.year, from.month, from.day);
//     to = DateTime(to.year, to.month, to.day);
//     var result = (to.difference(from).inHours / 24).round();
//     return result.toString();
//   }

//   List<DataColumn> getColumns(List<String> columns) {
//     return columns
//         .map(
//           (String column) => DataColumn(
//             label: Container(width: 150, child: Text(column)),
//           ),
//         )
//         .toList();
//   }

  

// }


import 'package:flutter/material.dart';
import 'claim_status_data.dart';
import 'package:intl/intl.dart';
import 'claim_status_mobile.dart';
import 'claim_status_row.dart';
import 'drawer.dart';
import 'utils.dart';
import 'package:overlay_support/overlay_support.dart';

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

class _ClaimStatusState extends State<ClaimStatus>
    with TickerProviderStateMixin {
  List users = allUsers;
  List Approved_requests = [];
  List Pending_requests = [];
  List Rejected_requests = [];
  List Original_users = allUsers;
  var active_filter = 'All';

  @override
  initState() {
    super.initState();
    setState(() {
      for (var i = 0; i < users.length; i++) {
        if (users[i].status == 'Approved') {
          Approved_requests.add(users[i]);
        } else if (users[i].status == 'Pending') {
          Pending_requests.add(users[i]);
        } else if (users[i].status == 'Rejected') {
          Rejected_requests.add(users[i]);
        }
      }
    });
  }

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
    var controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    var offset = Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
        .animate(controller);

    var screen_height = MediaQuery.of(context).size.height;

    return Material(
        child: DefaultTabController(
            initialIndex: 1,
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                  title: //Transform(
                      // you can forcefully translate values left side using Transform
                      // transform: Matrix4.translationValues(-130.0, 0.0, 0.0),
                      //child:
                      const Text(
                    "Neo",
                  ),
                ),
                body: Stack(children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: const Text('Claim Status',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Stack(children: [
                            ElevatedButton(
                                onPressed: () {
                                  showOverlay((context, t) {
                                    // add padding
                                    return Padding(
                                      // set padding according to the screen_height
                                      padding: EdgeInsets.only(
                                          top: screen_height * 0.11),
                                      // padding: const EdgeInsets.only(top: 
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 70),
                                        color: Color.lerp(Colors.transparent,
                                            Colors.black54, t),
                                        child: FractionalTranslation(
                                          translation: Offset.lerp(
                                              const Offset(1, 0),
                                              const Offset(0, 0),
                                              t)!,
                                          child: Container(
                                              color: const Color.fromARGB(255,250,250,250),
                                              child: SingleChildScrollView(
                                                  child: Column(
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 220)),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      
                                                      RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            WidgetSpan(
                                                              child: Container(
                                                                padding: const EdgeInsets
                                                                        .only(
                                                                    left: 30),
                                                                child: const DefaultTextStyle (
                                                                  style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            18,
                                                                            fontWeight: FontWeight.bold),
                                                                  child: Text(
                                                                    'Saved Claims',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                                )
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        padding: const EdgeInsets
                                                                .only(
                                                            right: 10),
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            OverlaySupportEntry
                                                                    .of(context)!
                                                                .dismiss();
                                                          },
                                                          style: ElevatedButton.styleFrom(
                                                          // disable shadows
                                                          shadowColor: Colors.transparent,
                                                          backgroundColor: const Color.fromARGB(255,250,250,250),),
                                                          child: const Icon(
                                                              Icons.close,
                                                              color: Color.fromRGBO(124, 128, 134, 1)
                                                              )
                                                              // change color
                                                              
                                                              ),
                                                      )
                                                    ],
                                                  ),
                                                  const Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              right: 250)),
                                                  for (var request in users)
                                                    oneRow(request)
                                                ],
                                              ))),
                                        ))
                                      
                                    );
                                    return Container(
                                        padding: const EdgeInsets.only(
                                            left: 70, top: 105),
                                        color: Color.lerp(Colors.transparent,
                                            Colors.black54, t),
                                        child: FractionalTranslation(
                                          translation: Offset.lerp(
                                              const Offset(1, 0),
                                              const Offset(0, 0),
                                              t)!,
                                          child: Container(
                                              color: const Color.fromARGB(255,250,250,250),
                                              child: SingleChildScrollView(
                                                  child: Column(
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 220)),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      
                                                      RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            WidgetSpan(
                                                              child: Container(
                                                                padding: const EdgeInsets
                                                                        .only(
                                                                    left: 30),
                                                                child: const DefaultTextStyle (
                                                                  style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            18,
                                                                            fontWeight: FontWeight.bold),
                                                                  child: Text(
                                                                    'Saved Claims',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                                )
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        padding: const EdgeInsets
                                                                .only(
                                                            right: 10),
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            OverlaySupportEntry
                                                                    .of(context)!
                                                                .dismiss();
                                                          },
                                                          style: ElevatedButton.styleFrom(
                                                          // disable shadows
                                                          shadowColor: Colors.transparent,
                                                          backgroundColor: const Color.fromARGB(255,250,250,250),),
                                                          child: const Icon(
                                                              Icons.close,
                                                              color: Color.fromRGBO(124, 128, 134, 1)
                                                              )
                                                              // change color
                                                              
                                                              ),
                                                      )
                                                    ],
                                                  ),
                                                  const Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              right: 250)),
                                                  for (var request in users)
                                                    oneRow(request)
                                                ],
                                              ))),
                                        ));
                                  }, duration: Duration.zero);
                                },
                                style: ElevatedButton.styleFrom(
                                    // disable shadows
                                    shadowColor: Colors.transparent,
                                    backgroundColor: const Color.fromARGB(
                                        250, 250, 250, 255)),
                                child: Row(
                                  children: const [
                                    Icon(
                                        // make icon grey
                                        Icons.save_rounded,
                                        color:
                                            Color.fromRGBO(124, 128, 134, 1)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, bottom: 60)),
                                    Text('Saved Claims',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                124, 128, 134, 1),
                                            fontSize: 12),
                                        textAlign: TextAlign.right),
                                  ],
                                )),
                          ]),
                        ],
                      ),
                      TabBar(
                        // indicatorSize: TabBarIndicatorSize.label,
                        tabs: <Widget>[
                          Wrap(
                              // increase height of the tab
                              children: [
                                const Text('All',
                                    style: TextStyle(
                                        color: Color.fromRGBO(124, 128, 134, 1),
                                        fontSize: 12),
                                    textAlign: TextAlign.right),
                                const Padding(padding: EdgeInsets.only(left: 5)),
                                Container (
                                  constraints: const  BoxConstraints(
                                    minWidth: 20,
                                    minHeight: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(75, 149, 247, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.only(left: 7, right: 5),
                                  child: Text(
                                    allRequests(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ]),
                          Wrap(children: [
                            const Text('Pending',
                                style: TextStyle(
                                    color: Color.fromRGBO(124, 128, 134, 1),
                                    fontSize: 12),
                                textAlign: TextAlign.right),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            Container(
                              constraints: const BoxConstraints(
                                minWidth: 20,
                                minHeight: 12,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(75, 149, 247, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 7, right: 5),
                              child: Text(
                                pendingRequests(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ]),
                          Wrap(children: [
                            const Text('Rejected',
                                style: TextStyle(
                                    color: Color.fromRGBO(124, 128, 134, 1),
                                    fontSize: 12),
                                textAlign: TextAlign.right),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            Container(
                              constraints: const BoxConstraints(
                                minWidth: 20,
                                minHeight: 12,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(75, 149, 247, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 6, right: 5),
                              child: Text(
                                rejectedRequests(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ]),
                          Wrap(children: [
                            const Text('Approved',
                                style: TextStyle(
                                    color: Color.fromRGBO(124, 128, 134, 1),
                                    fontSize: 12),
                                textAlign: TextAlign.right),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            Container(
                              constraints: const BoxConstraints(
                                minWidth: 20,
                                minHeight: 12,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(75, 149, 247, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 6, right: 5),
                              child: Text(
                                approvedRequests(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ]),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            SingleChildScrollView(
                                child: Column(
                              children: [
                                for (var test in allUsers) oneRow(test)
                              ],
                            )),
                            SingleChildScrollView(
                                child: Column(
                              children: [
                                for (var test in Pending_requests) oneRow(test)
                              ],
                            )),
                            SingleChildScrollView(
                                child: Column(
                              children: [
                                for (var test in Rejected_requests) oneRow(test)
                              ],
                            )),
                            SingleChildScrollView(
                                child: Column(
                              children: [
                                for (var test in Approved_requests) oneRow(test)
                              ],
                            )),
                          ],
                        ),
                      ),

                      // TabBarView(
                      //   children: <Widget>[
                      //     SingleChildScrollView(
                      //       child: Column (
                      //         children: [
                      //           for (var test in allUsers)
                      //           oneRow(test)
                      //         ],
                      //       )
                      //     ),
                      //     SingleChildScrollView(
                      //       child: Column (
                      //         children: [
                      //           for (var test in Pending_requests)
                      //           oneRow(test)
                      //         ],
                      //       )
                      //     ),
                      //     SingleChildScrollView(
                      //       child: Column (
                      //         children: [
                      //           for (var test in Rejected_requests)
                      //           oneRow(test)
                      //         ],
                      //       )
                      //     ),
                      //     SingleChildScrollView(
                      //       child: Column (
                      //         children: [
                      //           for (var test in Approved_requests)
                      //           oneRow(test)
                      //         ],
                      //       )
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),

                  //   Positioned(
                  //   right: 2,
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: SlideTransition(
                  //       position: offset,
                  //       child: SingleChildScrollView(
                  //         child: Container(
                  //           child: Column(
                  //             children: [

                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               ElevatedButton(onPressed: () {
                  //                 switch (controller.status) {
                  //                   case AnimationStatus.completed:
                  //                     controller.reverse();
                  //                     break;
                  //                   case AnimationStatus.dismissed:
                  //                     controller.forward();
                  //                     break;
                  //                   default:
                  //                 }
                  //               }, child: Icon(Icons.close)),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //               Text('Saved Claims'),
                  //             ],
                  //           ),

                  //       ),
                  //       ),
                  //     ),
                  //   )
                  // )
                ]))));
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
