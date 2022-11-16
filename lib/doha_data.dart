import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert';


class dohadata {
  var _postsJson = [];

  claimStatusListData() async {
    
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

    

    // print(result['message']);
    _postsJson = result['message'];
    

  }

  List get postsJson {
    return [..._postsJson];
  }


}



