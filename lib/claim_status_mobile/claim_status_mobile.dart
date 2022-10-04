import 'package:flutter/material.dart';
import 'claim_status_data.dart';
import 'saved_claims_row_mobile.dart';
import 'claim_status_row_mobile.dart';
import 'package:overlay_support/overlay_support.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ClaimStatusMobile(title: 'Flutter Demo Home Page'),
    );
  }
}

class ClaimStatusMobile extends StatefulWidget {
  final String title;
  ClaimStatusMobile({Key? key, required this.title}) : super(key: key);

  // pur users as allusers from data.dart
  // final List<user> users = allUsers;

  @override
  _ClaimStatusMobileState createState() => _ClaimStatusMobileState();
}

class _ClaimStatusMobileState extends State<ClaimStatusMobile>
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
                title: 
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
                                                                              Text('Saved Claims', textAlign: TextAlign.left),
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
                                                                right: 250)),
                                                    for (var request in users)
                                                      savedClaimRow(request)
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
                        Container(
                          height: 40,
                          padding: const EdgeInsets.only(top: 10),
                          child: Wrap(
                              // increase height of the tab
                              children: [
                                const Text('All',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(124, 128, 134, 1),
                                        fontSize: 12),
                                    textAlign: TextAlign.right),
                                const Padding(
                                    padding: EdgeInsets.only(left: 5)),
                                Container(
                                  constraints: const BoxConstraints(
                                    minWidth: 20,
                                    minHeight: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(75, 149, 247, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: 7, right: 5),
                                  child: Text(
                                    allRequests(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ]),
                        ),
                        Container(
                          height: 40,
                          padding: const EdgeInsets.only(top: 10),
                          child: Wrap(children: [
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
                              padding:
                                  const EdgeInsets.only(left: 7, right: 5),
                              child: Text(
                                pendingRequests(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ]),
                        ),
                        Container(
                          height: 40,
                          padding: const EdgeInsets.only(top: 10),
                          child: Wrap(children: [
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
                              padding:
                                  const EdgeInsets.only(left: 6, right: 5),
                              child: Text(
                                rejectedRequests(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ]),
                        ),
                        Container(
                          height: 40,
                          padding: const EdgeInsets.only(top: 10),
                          child: Wrap(children: [
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
                              padding:
                                  const EdgeInsets.only(left: 6, right: 5),
                              child: Text(
                                approvedRequests(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          SingleChildScrollView(
                              child: Column(
                            children: [
                              for (var test in allUsers)
                                claimStatusRowMobile(test)
                            ],
                          )),
                          SingleChildScrollView(
                              child: Column(
                            children: [
                              for (var test in Pending_requests)
                                claimStatusRowMobile(test)
                            ],
                          )),
                          SingleChildScrollView(
                              child: Column(
                            children: [
                              for (var test in Rejected_requests)
                                claimStatusRowMobile(test)
                            ],
                          )),
                          SingleChildScrollView(
                              child: Column(
                            children: [
                              for (var test in Approved_requests)
                                claimStatusRowMobile(test)
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]
          )
        )
      )
    );
  }
}