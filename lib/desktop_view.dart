import 'package:flutter/material.dart';
import 'data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DesktopView(title: 'Flutter Demo Home Page'),
    );
  }
}

class DesktopView extends StatefulWidget {
  final String title;
  DesktopView({Key? key, required this.title}) : super(key: key);

  // pur users as allusers from data.dart
  // final List<user> users = allUsers;

  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {

  var _postsJson = [];

  // fetchAlbumWithoutAwait() async {
  // var header = {
  //     "Content-Type": "application/json",
  //     "Authorization": "token bfc3d0749b9c2ec:7aa9ebb7a30c606"
  //   };

  //   // always take care of authorization
  // var client = http.Client();

  // var url = Uri.parse('https://doha-matrix.elasticrun.in/api/method/matrix.api.angular_backend.get_completed_trips?fields=%5B%22*%22%5D&filters=%5B%5D&order_by=modified%20desc&limit_start=0&limit_page_length=5&employee=EMP-0264&doctype=Travel%20and%20Lodging%20Request');

  // // var url = Uri.parse('https://doha-matrix.elasticrun.in/api/resource/Travel%20and%20Lodging%20Request/TL/EMP-0264/Dec21/0012');

  // var response = await client.get(url, headers: header);
  // // print(jsonDecode(response.body));
  // var result = (jsonDecode(response.body));

  // print(result['message']);

  // setState(() {
  //   _postsJson = result['message'];
  // });                            
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchAlbumWithoutAwait();
  // }

  var travel_and_lodging_id = 'TL/EMP-0264/Sep20/0017';
  var reporting_manager = 'Rakesh Virendra Singh';
  var reporting_manager_id = 'EMP-0264';
  var project_and_cost_center = 'Technology, Pune - PUHQ - Technology - NTEX';
  var request_date = 'Mon, Sept 29, 2022';
  var Designation = 'Director Technology';
  var base_location = 'Pune';
  final List<user> users = allUsers;

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
                                          child: const Text(
                                              "Intercity Travel and Lodging Details",
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
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 18),
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // add button to the right

                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        245, 245, 245, 255)),
                                child: Row(
                                  children: const [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25, bottom: 25)),
                                    Text('Attachment',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                        textAlign: TextAlign.right),
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Icon(
                                      Icons.attachment_outlined,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              )
                            ],
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
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: IconButton(
                                          icon: const Icon(Icons.location_pin),
                                          onPressed: () {},
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text(travel_and_lodging_id,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
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
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 18),
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: IconButton(
                                          icon: const Icon(
                                              Icons.account_circle_outlined),
                                          onPressed: () {},
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text(
                                              '$reporting_manager_id: $reporting_manager',
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
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
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  Expanded(
                    // add padding to the expanded

                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(245, 245, 245, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              margin: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Project & Cost Center',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 154, 154, 154),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              margin: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Request Date',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 154, 154, 154),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              margin: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Designation',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 154, 154, 154),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              margin: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Base Location',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 154, 154, 154),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),
                ]),
                Row(children: [
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(245, 245, 245, 255),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(project_and_cost_center,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(request_date,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(Designation,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(245, 245, 245, 255),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(base_location,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                      textAlign: TextAlign.left),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),
                ]),
                // ------------------------------------------------------------------------------------
                Row(children: [
                  const Padding(padding: EdgeInsets.only(left: 20, top: 475)),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Row(children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 86, 86, 86),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                        'Lodging Request Status',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('City',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('From Date',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('To Date',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('Travel Purpose',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('Other Travel Purpose',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('Sharing Employee 1',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('Sharing Employee 2',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      255, 86, 86, 86),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 10,
                                                    bottom: 10),
                                                margin: const EdgeInsets.only(
                                                    left: 0,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: const [
                                                    Text('Other Details',
                                                        style: TextStyle(
                                                            color: Color
                                                                .fromARGB(
                                                                    250,
                                                                    250,
                                                                    250,
                                                                    255),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                        textAlign:
                                                            TextAlign.left),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]),
                                  for (var user in users)
                                    Row(children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 10,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          user
                                                              .lodgingRequestStatus,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(user.city,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(user.fromDate,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(user.toDate,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    // color: Color.fromARGB(250, 250, 250, 255),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(user.travelPurpose,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                      // const Padding(
                                                      //   padding: EdgeInsets.only(bottom: 10),
                                                      //   child:
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    // color: Color.fromARGB(250, 250, 250, 255),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          user
                                                              .otherTravelPurpose,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(user.sharingEmployee1,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(user.sharingEmployee2,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    // color: Color.fromARGB(250, 250, 250, 255),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 10),
                                                  margin: const EdgeInsets.only(
                                                      left: 0,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(user.otherDetails,
                                                          style:
                                                              const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16),
                                                          textAlign:
                                                              TextAlign.left),
                                                      // const Padding(
                                                      //   padding: EdgeInsets.only(bottom: 10),
                                                      //   child:
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                ],
                              )
                            ],
                          ),
                        ),
                        // )
                      ],
                    ),
                    // ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),
                ]),
              ],
            )));
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
