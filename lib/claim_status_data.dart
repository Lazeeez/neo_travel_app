// create user class




class user {
  final String claimType;
  final String expenseClaimID;
  final String travelAndLodgingID;
  final String city;
  final String fromDate;
  final String toDate;
  final String status;
  final String statusSimple;
  final String claimAmount;
  final String amountToBeReimbursed;
  final String totalSanctionedAmount;

  const user({
    required this.claimType,
    required this.expenseClaimID,
    required this.travelAndLodgingID,
    required this.city,
    required this.fromDate,
    required this.toDate,
    required this.status,
    required this.statusSimple,
    required this.claimAmount,
    required this.amountToBeReimbursed,
    required this.totalSanctionedAmount,
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
final allUsers = <user> [
  user(
    claimType: 'Travel',
    expenseClaimID: 'EXP-00001',
    travelAndLodgingID: 'TRAV-00001',
    city: 'Mumbai',
    fromDate: '2021-05-01',
    toDate: '2021-05-05',
    status: 'Pending',
    statusSimple: 'Pending',
    claimAmount: '1000',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Lodging',
    expenseClaimID: 'EXP-00002',
    travelAndLodgingID: 'TRAV-00002',
    city: 'Dubai',
    fromDate: '2021-05-01',
    toDate: '2021-05-05',
    status: 'Approved',
    statusSimple: 'Approved',
    claimAmount: '1000',
    amountToBeReimbursed: '0',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Lodging',
    expenseClaimID: 'EXP-00003',
    travelAndLodgingID: 'TRAV-00003',
    city: 'Dublin',
    fromDate: '2021-05-01',
    toDate: '2021-05-05',
    status: 'Rejected',
    statusSimple: 'Rejected',
    claimAmount: '1000',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Travel',
    expenseClaimID: 'EXP-00004',
    travelAndLodgingID: 'TRAV-00004',
    city: 'Moscow',
    fromDate: '2021-05-01',
    toDate: '2021-05-05',
    status: 'Approved',
    statusSimple: 'Approved',
    claimAmount: '0',
    amountToBeReimbursed: '0',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Travel',
    expenseClaimID: 'EXP-00005',
    travelAndLodgingID: 'TRAV-00005',
    city: 'Monaco',
    fromDate: '2021-05-01',
    toDate: '2021-05-05',
    status: 'Rejected',
    statusSimple: 'Rejected',
    claimAmount: '1000',
    amountToBeReimbursed: '0',
    totalSanctionedAmount: '0',
  ),
  user(
    claimType: 'Lodging',
    expenseClaimID: 'EXP-00006',
    travelAndLodgingID: 'TRAV-00006',
    city: 'London',
    fromDate: '2021-05-01',
    toDate: '2021-05-05',
    status: 'Approved',
    statusSimple: 'Approved',
    claimAmount: '0',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Travel',
    expenseClaimID: 'EXP-00007',
    travelAndLodgingID: 'TRAV-00007',
    city: 'Paris',
    fromDate: '2021-05-01',
    toDate: '2021-05-05',
    status: 'Approved',
    statusSimple: 'Approved',
    claimAmount: '1000',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '0',
  )
];
