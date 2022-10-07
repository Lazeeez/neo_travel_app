// create user class




class user {
  final String expenseClaimID;
  final String postingDate;
  final String postingPlace;
  final String type;
  final String claimedAmount;


  const user({
    required this.expenseClaimID,
    required this.postingDate,
    required this.postingPlace,
    required this.type,
    required this.claimedAmount,
  });
}



// fetchAlbum() {
//   var header = {
//       "Content-Type": "application/json",
//       "Authorization": "token c79e05dc14fe83b:fc180e44e5a1172"
//     };
//   var client = http.Client();

//   // var url = Uri.parse('https://doha-matrix.elasticrun.in/api/method/matrix.api.angular_backend.get_completed_trips?fields=%5B%22*%22%5D&filters=%5B%5D&order_by=modified%20desc&limit_start=0&limit_page_length=5&employee=EMP-0044&doctype=Travel%20and%20Lodging%20Request');

//   var url = Uri.parse('http://localhost:83/api/method/matrix.api.angular_backend.get_completed_trips?fields=%5B%22*%22%5D&filters=%5B%5D&order_by=modified%20desc&limit_start=0&limit_page_length=5&employee=EMP-00045&doctype=Travel%20and%20Lodging%20Request');

//   var response = client.get(url, headers: header);
//   // print(jsonDecode(response.body));
//   var result = response;
//   // print(result['message'][0]['city']);
//   print(response);
//   // print(response);
//   // print(result['message'][0]);

//   return result;                                  
// }

// Future<http.Response> fetchAlbum() {
  
//   return http.get(Uri.parse('https://doha-matrix.elasticrun.in/api/method/matrix.api.angular_backend.get_completed_trips?fields=%5B%22*%22%5D&filters=%5B%5D&order_by=modified%20desc&limit_start=5&limit_page_length=5&employee=EMP-0044&doctype=Travel%20and%20Lodging%20Request'));
// }

// final test = 9305b1c2390388b

// create data
final allExpenseClaims = <user> [
  user(
    expenseClaimID: 'EXP-00001',
    postingDate: '2021-07-01',
    postingPlace: 'Doha',
    type: 'Travel',
    claimedAmount: '1000',
  ),
  user(
    expenseClaimID: 'EXP-00002',
    postingDate: '2021-07-02',
    postingPlace: 'Doha',
    type: 'Travel',
    claimedAmount: '1000',
  ),
  user(
    expenseClaimID: 'EXP-00003',
    postingDate: '2021-07-03',
    postingPlace: 'Doha',
    type: 'Travel',
    claimedAmount: '1000',
  ),
  user(
    expenseClaimID: 'EXP-00004',
    postingDate: '2021-07-04',
    postingPlace: 'Doha',
    type: 'Travel',
    claimedAmount: '1000',
  ),
  user(
    expenseClaimID: 'EXP-00005',
    postingDate: '2021-07-05',
    postingPlace: 'Doha',
    type: 'Travel',
    claimedAmount: '1000',
  )
  
  
];
