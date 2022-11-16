// create a screen
import 'package:flutter/material.dart';
// import 'claim_status_screen.dart';
import 'claim_status_desktop/claim_status_screen.dart';
// import 'testsupport.dart';
// import 'saved_claims_screen.dart';
// import 'test.dart';
import 'package:overlay_support/overlay_support.dart';

import 'claim_status_desktop/list_view_desktop.dart';
// import 'claim_status_mobile/claim_status_mobile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(child: MaterialApp(
      title: 'Flutter Demo',
      home: Screen(),
    )
    );
  }
}

class Screen extends StatefulWidget {
  Screen({super.key});


  // pur users as allusers from data.dart
  // final List<user> users = allUsers;

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // return ClaimStatus(title: 'Claim Status');
        // return Home();
        return DesktopView(title: 'desktop');
        // if (constraints.maxWidth > 1050) {
          
        //   return ClaimStatus(title: 'desktop');
        // } else {
        //   return ClaimStatus(title: 'mobile');
        // }
      },
    );
  }
}