// create a class
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'list_view_mobile.dart';
import 'dart:math' as math;
import 'expense_claim_sub_row_data.dart';

// create a class that accepts a List and print it
class subRow extends StatelessWidget {
  var request;

  subRow(this.request, {super.key});

  String daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    var result = (to.difference(from).inHours / 24).round();
    return result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1),
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
                            padding: const EdgeInsets.all(10),
                              
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.receipt,
                                          color: Color.fromARGB(
                                              255, 150, 150, 150),
                                          size: 18),
                                      Padding(padding: const EdgeInsets.only(left: 5)),
                                      Text("Expense Claims",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 12),
                                          textAlign: TextAlign.left),
                                      
                                      
                                        Padding(padding: const EdgeInsets.only(right: 28)),
                                      Container(
                                        height: 25,
                                        // width: 121,
                                        
                                        child: ElevatedButton(
                                          
                                            
                                          onPressed:() {
                                            print('hope');
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Color.fromRGBO(255, 255, 255, 1)
                                          ),
                                          child:
                                           
                                          RichText(
                                            text: TextSpan(
                                              
                                              children: [
                                                WidgetSpan(
                                                  child: Container(
                                                    padding: const EdgeInsets.only(right: 0, top: 0),
                                                    child: Icon(
                                                    Icons.attachment,
                                                    size: 15,
                                                    color: Color.fromRGBO(75, 149, 247, 1),
                                                    ),
                                                  ),
                                                ),
                                                WidgetSpan(
                                                  child: Text('Attachments', style: TextStyle(color: Color.fromRGBO(75, 149, 247, 1), fontSize: 12),),
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
                                                    child: Text('Posting Date', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text("${DateFormat('yMMMd').format(DateTime.parse(request.postingDate))}", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
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
                                                    child: Text('Posting Place', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text(request.postingPlace, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
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
                                                    child: Text('Type', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text(request.type, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
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
                                                    child: Text('Claimed Amount', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 5)),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  WidgetSpan(
                                                    child: Text(request.claimedAmount, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(padding: const EdgeInsets.only(bottom: 10)),
                                          ]
                                        )
                                      ),
                                      // Padding(padding: const EdgeInsets.only(bottom: 20)),
                                    ],
                                  ),
                                  

                                ],
                              )));
  }
}
