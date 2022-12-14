import 'package:flutter/material.dart';
// import 'package:http/http.dart';
import '../data.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class MobileView extends StatefulWidget {
  final String title;
  MobileView({Key? key, required this.title}) : super(key: key);

  // pur users as allusers from data.dart
  // final List<user> users = allUsers;

  @override
  _MobileViewState createState() => _MobileViewState();
}

initState() {
  // fetch data from data.dart
  // users = allUsers;
}

// getData() async {
//   var data = await fetchAlbumWithoutAwait();
//   return data.toList();
// }

class _MobileViewState extends State<MobileView> {
  var _postsJson = [];
  var nasty = [];

  fetchAlbumWithoutAwait() async {
    var header = {
      "Content-Type": "application/json",
      "Authorization": "token 9042748af9f0690:2deb5e95bee97ce"
    };
    var client = http.Client();

    // secret 2deb5e95bee97ce
    // key 9042748af9f0690

    var url = Uri.parse(
        'https://doha-matrix.elasticrun.in/api/method/matrix.api.angular_backend.get_completed_trips?fields=%5B%22*%22%5D&filters=%5B%5D&order_by=modified%20desc&limit_start=0&limit_page_length=5&employee=EMP-0264&doctype=Travel%20and%20Lodging%20Request');

    // var url = Uri.parse('https://doha-matrix.elasticrun.in/api/resource/Travel%20and%20Lodging%20Request/TL/EMP-0264/Dec21/0012');

    var response = await client.get(url, headers: header);
    // print(jsonDecode(response.body));
    var result = (jsonDecode(response.body));

    print(result['message']);

    setState(() {
      _postsJson = result['message'];
    });
  }


    dest() async {
    var header = {
      "Content-Type": "application/json",
      "Authorization": "token 9042748af9f0690:2deb5e95bee97ce"
    };
    var client = http.Client();

    // secret 2deb5e95bee97ce
    // key 9042748af9f0690

    var url = Uri.parse(
        'https://doha-matrix.elasticrun.in/api/method/matrix.api.travel_management.claim_count_for_dashboard?employee=EMP-01424');

    // var url = Uri.parse('https://doha-matrix.elasticrun.in/api/resource/Travel%20and%20Lodging%20Request/TL/EMP-0264/Dec21/0012');

    var response = await client.get(url, headers: header);
    // print(response.body);
    var result = (jsonDecode(response.body));

    print(result['message']);

  }



  final Dio _dio = Dio();
  final accessToken = '9042748af9f0690:2deb5e95bee97ce';

  Future<dynamic> getUserProfileData() async {
    try {
      Response response = await _dio.get(
        'https://doha-matrix.elasticrun.in/api/method/matrix.api.travel_management.claim_count_for_dashboard',
        
        options: Options(
          headers: {'Authorization': 'token 9042748af9f0690:2deb5e95bee97ce'},
        ),
      );
      print("trap");
      print(response.data);
      print("crap");
      // var response = await client.get(url, headers: header);
    // print(jsonDecode(response.body));
      var result = (jsonDecode(response.data));
      return response.data;
    } on DioError catch (e) {
      print(e.response!.statusCode);
      print("Failed to Load Data");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchAlbumWithoutAwait();
    getUserProfileData();
  }

  var travel_and_lodging_id = 'TL/EMP-0264/Sep20/0017';
  var reporting_manager = 'Rakesh Virendra Singh';
  var reporting_manager_id = 'EMP-0264';
  var project_and_cost_center = 'Technology, Pune - PUHQ - Technology - NTEX';
  var request_date = 'Mon, Sept 29, 2022';
  var Designation = 'Director Technology';
  var base_location = 'Pune';

  // List data_from_api = getData();
  // convert data_from_api to List
  // List usersApi = nip.toList();

  // var data
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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // align left
          centerTitle: false,
          leading: const Icon(Icons.menu),
          title: const Text('Neo',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                            onPressed: () {
                              // go back to previous page
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios_new,
                                color: Colors.black)),
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
                                                  fontSize: 18),
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
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  // add color

                  children: [
                    Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // add button to the right
                                  ElevatedButton(
                                    onPressed: () {
                                      var bully = dest();
                                      print("tripy");
                                      print(bully);
                                      print("nasty");
                                      // print(_postsJson);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            245, 245, 245, 255)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, bottom: 20)),
                                        Text('Attachment',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                            textAlign: TextAlign.center),
                                        Padding(
                                            padding: EdgeInsets.only(left: 10)),
                                        Icon(
                                          Icons.attachment_outlined,
                                          color: Color.fromARGB(
                                              255, 139, 139, 139),
                                        ),
                                      ],
                                    ),
                                  )
                                ]))),
                  ],
                ),
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            // add color

                            padding: const EdgeInsets.only(
                                left: 5, top: 10, bottom: 0),
                            margin: const EdgeInsets.only(left: 5, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: IconButton(
                                          icon: const Icon(Icons.location_pin),
                                          color: const Color.fromARGB(
                                              255, 139, 139, 139),
                                          onPressed: () {},
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 11),
                                          child: const Text('Travel Lodging',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 139, 139, 139),
                                                  fontWeight: FontWeight.bold,
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
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                right: 5, top: 10, bottom: 0),
                            margin: const EdgeInsets.only(right: 5, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          child: Text('$travel_and_lodging_id',
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
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
                  const Padding(padding: EdgeInsets.only(left: 10)),

                  // children: [
                ]),
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 0, bottom: 18),
                            margin: const EdgeInsets.only(left: 0, top: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: IconButton(
                                          icon: const Icon(
                                              color: Color.fromARGB(
                                                  255, 139, 139, 139),
                                              Icons.account_circle_outlined),
                                          onPressed: () {},
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text('$reporting_manager_id',
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 139, 139, 139),
                                                  fontWeight: FontWeight.bold,
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
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 0, bottom: 7),
                            margin: const EdgeInsets.only(left: 0, top: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text('$reporting_manager',
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
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
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 5),
                              margin: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Project & Cost Center',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 139, 139, 139),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
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
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 5),
                              margin: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(project_and_cost_center,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                      textAlign: TextAlign.right),
                                ],
                              ),
                            ),
                          ),
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
                                        color: const Color.fromARGB(
                                            245, 245, 245, 255),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      margin: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('Request Date',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 139, 139, 139),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.left),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            245, 245, 245, 255),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      margin: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(request_date,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                                        color: const Color.fromARGB(
                                            245, 245, 245, 255),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      margin: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('Designation',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 139, 139, 139),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.left),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            245, 245, 245, 255),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      margin: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(Designation,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                                        color: const Color.fromARGB(
                                            245, 245, 245, 255),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 5),
                                      margin: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('Base Location',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 139, 139, 139),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.left),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            245, 245, 245, 255),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 5),
                                      margin: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          bottom: 10,
                                          top: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(base_location,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),
                ]),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        ExpansionTile(
                          initiallyExpanded: false,
                            title: Row(children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 5, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 0),
                                                      child: const Text(
                                                          "Overlapping Travel Requests",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 19),
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
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(left: 20)),
                            ]),
                            children: [
                              for (var user in _postsJson)
                                Row(children: [
                                  Padding(padding: const EdgeInsets.only(left: 20)),
                                  Expanded(
                                    child: Container(
                                      
                                      decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 195, 195, 195),
                                              blurRadius: 3.0,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                          color: Color.fromARGB(
                                              250, 250, 250, 250),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Column(
                                        children: [
                                          
                                          Padding(padding: EdgeInsets.only(top: 15)),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'Travel Request',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'travel_purpose'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'Travel Date',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'travel_purpose'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'From (City)',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'sharing_employee_1'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'To (City)',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'sharing_employee_2'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: const EdgeInsets.only(right: 20)),
                                  const Padding(
                                      padding: EdgeInsets.only(bottom: 400)),
                                ]
                              ),

                              for (var user in _postsJson)
                                Row(children: [
                                  Padding(padding: const EdgeInsets.only(left: 20)),
                                  Expanded(
                                    child: Container(
                                      
                                      decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 195, 195, 195),
                                              blurRadius: 3.0,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                          color: Color.fromARGB(
                                              250, 250, 250, 250),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Column(
                                        children: [
                                          
                                          Padding(padding: EdgeInsets.only(top: 15)),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'Lodging Requests',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'travel_purpose'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'From Date',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'travel_purpose'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'To Date',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'sharing_employee_1'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'City',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'sharing_employee_2'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: const EdgeInsets.only(right: 20)),
                                  const Padding(
                                      padding: EdgeInsets.only(bottom: 400)),
                                ]),


                            ]),
                            ExpansionTile(
                          initiallyExpanded: false,
                            title: Row(children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 5, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 0),
                                                      child: const Text(
                                                          "Overlapping Lodging Requests",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 19),
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
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(left: 20)),
                            ]),
                            children: [
                              for (var user in _postsJson)
                                Row(children: [
                                  Padding(padding: const EdgeInsets.only(left: 20)),
                                  Expanded(
                                    child: Container(
                                      
                                      decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 195, 195, 195),
                                              blurRadius: 3.0,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                          color: Color.fromARGB(
                                              250, 250, 250, 250),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Column(
                                        children: [
                                          
                                          Padding(padding: EdgeInsets.only(top: 15)),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'Lodging Requests',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'travel_purpose'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'City',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'travel_purpose'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'From Date',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'sharing_employee_1'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          const Divider(
                                            height: 20,
                                            thickness: 1,
                                            indent: 20,
                                            endIndent: 20,
                                            color: Color.fromARGB(
                                                255, 195, 195, 195),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                                'To Date',
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        margin: const EdgeInsets
                                                            .all(10),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                                user[
                                                                    'sharing_employee_2'],
                                                                style: const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        17),
                                                                textAlign:
                                                                    TextAlign
                                                                        .right),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                          
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: const EdgeInsets.only(right: 20)),
                                  const Padding(
                                      padding: EdgeInsets.only(bottom: 400)),
                                ]),


                            ])
                      ],
                    ))
                  ],
                ),
                // Divider(
                //   height: 20,
                //   thickness: 1,
                //   indent: 20,
                //   endIndent: 20,
                //   color: const Color.fromARGB(255, 195, 195, 195),
                
                // ),
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 20, bottom: 20),
                            margin: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 0),
                                          child: const Text(
                                              "Lodging & Boarding Request",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 19),
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
                // ------------------------------------------------------------------------------------
                Row(children: [
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  for (var user in _postsJson)
                                    Row(children: [
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 195, 195, 195),
                                                  blurRadius: 3.0,
                                                  spreadRadius: 2,
                                                ),
                                              ],
                                              color: Color.fromARGB(
                                                  250, 250, 250, 250),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          child: Column(
                                            children: [
                                              // CARD START

                                              Row(children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    top: 10,
                                                                    bottom: 10),
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    top: 10,
                                                                    bottom: 5),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    user[
                                                                        'city'],
                                                                    style: const TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            18),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 10,
                                                                    left: 10,
                                                                    top: 10,
                                                                    bottom: 5),
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 10,
                                                                    left: 10,
                                                                    top: 10,
                                                                    bottom: 5),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style: ElevatedButton.styleFrom(
                                                                      backgroundColor: const Color
                                                                              .fromARGB(
                                                                          190,
                                                                          255,
                                                                          225,
                                                                          126)),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Expanded(
                                                                          child:
                                                                              Column(
                                                                        children: [
                                                                          const Padding(
                                                                              padding: EdgeInsets.only(top: 0, bottom: 0)),
                                                                          Text(
                                                                              user['travel_request_status'],
                                                                              style: const TextStyle(color: Color.fromARGB(255, 114, 86, 0), fontWeight: FontWeight.bold, fontSize: 17),
                                                                              textAlign: TextAlign.center),
                                                                          const Padding(
                                                                              padding: EdgeInsets.only(left: 10)),
                                                                        ],
                                                                      ))
                                                                    ],
                                                                  ),
                                                                )
                                                                // Text(
                                                                //     user.lodgingRequestStatus,
                                                                //     style: TextStyle(
                                                                //         color: Color
                                                                //             .fromARGB(
                                                                //                 255,
                                                                //                 0,
                                                                //                 0,
                                                                //                 0),
                                                                //         fontWeight:
                                                                //             FontWeight
                                                                //                 .bold,
                                                                //         fontSize:
                                                                //             20),
                                                                //     textAlign:
                                                                //         TextAlign
                                                                //             .left),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                              Row(children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    top: 0,
                                                                    bottom: 10),
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10,
                                                                    top: 0,
                                                                    bottom: 10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                RichText(
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      WidgetSpan(
                                                                        child:
                                                                            Container(
                                                                          padding:
                                                                              const EdgeInsets.only(bottom: 14),
                                                                          child: Text(
                                                                              user['from_date'],
                                                                              style: const TextStyle(color: Color.fromARGB(255, 139, 139, 139), fontWeight: FontWeight.bold, fontSize: 16),
                                                                              textAlign: TextAlign.left),
                                                                        ),
                                                                      ),
                                                                      WidgetSpan(
                                                                        child:
                                                                            IconButton(
                                                                          icon: const Icon(
                                                                              color: Color.fromARGB(255, 139, 139, 139),
                                                                              Icons.arrow_forward),
                                                                          onPressed:
                                                                              () {},
                                                                        ),
                                                                      ),
                                                                      WidgetSpan(
                                                                        child:
                                                                            Container(
                                                                          padding:
                                                                              const EdgeInsets.only(bottom: 14),
                                                                          child: Text(
                                                                              user['to_date'],
                                                                              style: const TextStyle(color: Color.fromARGB(255, 139, 139, 139), fontWeight: FontWeight.bold, fontSize: 16),
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
                                                ),
                                              ]),
                                              Row(children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: const [
                                                                Text(
                                                                    'Travel Purpose',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    user[
                                                                        'travel_purpose'],
                                                                    style: const TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                              const Divider(
                                                height: 20,
                                                thickness: 1,
                                                indent: 20,
                                                endIndent: 20,
                                                color: Color.fromARGB(
                                                    255, 195, 195, 195),
                                              ),
                                              Row(children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: const [
                                                                Text(
                                                                    'Other Travel Purpose',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    user[
                                                                        'travel_purpose'],
                                                                    style: const TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                              const Divider(
                                                height: 20,
                                                thickness: 1,
                                                indent: 20,
                                                endIndent: 20,
                                                color: Color.fromARGB(
                                                    255, 195, 195, 195),
                                              ),
                                              Row(children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: const [
                                                                Text(
                                                                    'Sharing Employee 1',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    user[
                                                                        'sharing_employee_1'],
                                                                    style: const TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                              const Divider(
                                                height: 20,
                                                thickness: 1,
                                                indent: 20,
                                                endIndent: 20,
                                                color: Color.fromARGB(
                                                    255, 195, 195, 195),
                                              ),
                                              Row(children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: const [
                                                                Text(
                                                                    'Sharing Employee 2',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    user[
                                                                        'sharing_employee_2'],
                                                                    style: const TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                              const Divider(
                                                height: 20,
                                                thickness: 1,
                                                indent: 20,
                                                endIndent: 20,
                                                color: Color.fromARGB(
                                                    255, 195, 195, 195),
                                              ),
                                              Row(children: [
                                                Expanded(
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: const [
                                                                Text(
                                                                    'Other Details',
                                                                    style: TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            139,
                                                                            139,
                                                                            139),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(10),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    user[
                                                                        'other_details'],
                                                                    style: const TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            17),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ]),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 650)),
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
