import 'package:flutter/material.dart';
import 'claim_status_data.dart';
import 'package:intl/intl.dart';
import 'claim_status_mobile.dart';
import 'claim_status_row.dart';
import 'drawer.dart';
// import 'utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SavedClaims(title: 'Flutter Demo Home Page'),
    );
  }
}

class SavedClaims extends StatefulWidget {
  final String title;
  SavedClaims({Key? key, required this.title}) : super(key: key);

  // pur users as allusers from data.dart
  // final List<user> users = allUsers;

  @override
  _SavedClaimsState createState() => _SavedClaimsState();
}

class _SavedClaimsState extends State<SavedClaims> with TickerProviderStateMixin {
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

  @override
  Widget build(BuildContext context) {
    
    
    return Row(
      children: [
        // for(Color.fromARGB(255, 146, 132, 132)in Approved_requests)
        Expanded(
            child: Stack(
          children: [
            // const Padding(

            Container(
                padding: const EdgeInsets.all(28),
                color: const Color.fromARGB(250, 250, 250, 255),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Container(
                                    child: Text('Saved Claims',
                                      // request.city,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 28),
                                        textAlign: TextAlign.left),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 28,
                          
                          )
                        ],
                    ),
                  ]
                )
            )
          ]
        )
      )
          

                  
                
                
            

            
      ],
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
