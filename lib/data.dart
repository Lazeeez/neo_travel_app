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
    sharingEmployee1: 'Employee 1',
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