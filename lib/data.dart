// create user class




class user {
  final String lodgingRequestStatus;
  final String city;
  final String fromDate;
  final String toDate;
  final String travelPurpose;
  final String otherTravelPurpose;
  final String sharingEmployee1;
  final String sharingEmployee2;
  final String otherDetails;

  const user({
    required this.lodgingRequestStatus,
    required this.city,
    required this.fromDate,
    required this.toDate,
    required this.travelPurpose,
    required this.otherTravelPurpose,
    required this.sharingEmployee1,
    required this.sharingEmployee2,
    required this.otherDetails,
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
    lodgingRequestStatus: 'Single',
    city: 'Mumbai1',
    fromDate: '2021-05-01',
    toDate: '2021-05-02',
    travelPurpose: 'business',
    otherTravelPurpose: 'Other Details',
    sharingEmployee1: 'Employee 1',
    sharingEmployee2: 'Employee 2',
    otherDetails: 'OtherDetails',
  ),
  user(
    lodgingRequestStatus: 'Married',
    city: 'Pune2',
    fromDate: '2021-05-01',
    toDate: '2021-05-02',
    travelPurpose: 'Recruitment',
    otherTravelPurpose: '',
    sharingEmployee1: 'Mohammad Tasawwar Ibrar Hussain Khan',
    sharingEmployee2: 'Employee 2',
    otherDetails: 'Other Details',
  ),
  user(
    lodgingRequestStatus: 'Single',
    city: 'Mumbai3',
    fromDate: '2021-05-01',
    toDate: '2021-05-02',
    travelPurpose: 'Business',
    otherTravelPurpose: '',
    sharingEmployee1: 'Employee 1',
    sharingEmployee2: 'Employee 2',
    otherDetails: 'other details',
  ),
  user(
    lodgingRequestStatus: 'Married',
    city: 'Pune4',
    fromDate: '2021-05-01',
    toDate: '2021-05-02',
    travelPurpose: 'Business',
    otherTravelPurpose: '',
    sharingEmployee1: 'Employee 1',
    sharingEmployee2: 'Employee 2',
    otherDetails: 'Other Details',
  ),
  user(
    lodgingRequestStatus: 'Single',
    city: 'Mumbai5',
    fromDate: '2021-05-01',
    toDate: '2021-05-02',
    travelPurpose: 'Business',
    otherTravelPurpose: '',
    sharingEmployee1: 'Employee 1',
    sharingEmployee2: 'Employee 2',
    otherDetails: 'Other Details',
  )
];