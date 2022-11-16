// create user class




class user {
  final String claimType;
  final String expense_claim_id;
  final String lodging_parent;
  final String from_city;
  final String to_city;
  final String approver;
  final String from_date;
  final String to_date;
  final String workflow_state;
  final String workflow_state_simple;
  final String claimAmount;
  final String amountToBeReimbursed;
  final String totalSanctionedAmount;
  final String city;

  const user({
    required this.claimType,
    required this.expense_claim_id,
    required this.lodging_parent,
    required this.from_city,
    required this.to_city,
    required this.approver,
    required this.from_date,
    required this.to_date,
    required this.workflow_state,
    required this.workflow_state_simple,
    required this.claimAmount,
    required this.amountToBeReimbursed,
    required this.totalSanctionedAmount,
    required this.city,
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
    expense_claim_id: 'EXP-00001',
    lodging_parent: 'TRAV-00001',
    from_city: 'Mumbai',
    to_city: 'Delhi',
    city: 'trip',
    approver: 'John Doe',
    from_date: '2021-05-01',
    to_date: '2021-05-05',
    workflow_state: 'Pending',
    workflow_state_simple: 'Pending',
    claimAmount: '1000',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Lodging',
    expense_claim_id: 'EXP-00002',
    lodging_parent: 'TRAV-00002',
    from_city: 'Dubai',
    to_city: 'Mumbai',
    approver: 'John Doe',
    city: 'trip',
    from_date: '2021-05-01',
    to_date: '2021-05-05',
    workflow_state: 'Approved',
    workflow_state_simple: 'Approved',
    claimAmount: '1000',
    amountToBeReimbursed: '0',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Lodging',
    expense_claim_id: 'EXP-00003',
    lodging_parent: 'TRAV-00003',
    from_city: 'Dublin',
    to_city: 'LA',
    approver: 'John Cena',
    city: 'trip',
    from_date: '2021-05-01',
    to_date: '2021-05-05',
    workflow_state: 'Rejected',
    workflow_state_simple: 'Rejected',
    claimAmount: '1000',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Travel',
    expense_claim_id: 'EXP-00004',
    lodging_parent: 'TRAV-00004',
    from_city: 'Moscow',
    to_city:'Siberia',
    approver: 'Johnny Bravo',
    city: 'trip',
    from_date: '2021-05-01',
    to_date: '2021-05-05',
    workflow_state: 'Approved',
    workflow_state_simple: 'Approved',
    claimAmount: '0',
    amountToBeReimbursed: '0',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Travel',
    expense_claim_id: 'EXP-00005',
    lodging_parent: 'TRAV-00005',
    from_city: 'Monaco',
    to_city: '',
    approver: 'John Mchannon',
    from_date: '2021-05-01',
    city: 'trip',
    to_date: '2021-05-05',
    workflow_state: 'Rejected',
    workflow_state_simple: 'Rejected',
    claimAmount: '1000',
    amountToBeReimbursed: '0',
    totalSanctionedAmount: '0',
  ),
  user(
    claimType: 'Lodging',
    expense_claim_id: 'EXP-00006',
    lodging_parent: 'TRAV-00006',
    from_city: 'London',
    to_city: '',
    approver: 'Joe Mama',
    city: 'trip',
    from_date: '2021-05-01',
    to_date: '2021-05-05',
    workflow_state: 'Approved',
    workflow_state_simple: 'Approved',
    claimAmount: '0',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '1000',
  ),
  user(
    claimType: 'Travel',
    expense_claim_id: 'EXP-00007',
    city: 'trip',
    lodging_parent: 'TRAV-00007',
    from_city: 'Paris',
    to_city: 'Nice',
    approver: 'Alison Burgers',
    from_date: '2021-05-01',
    to_date: '2021-05-05',
    workflow_state: 'Approved',
    workflow_state_simple: 'Approved',
    claimAmount: '1000',
    amountToBeReimbursed: '1000',
    totalSanctionedAmount: '0',
  )
];
