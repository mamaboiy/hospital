class DoctorModel {
  String name;
  String imgUrl;
  String speciality;
  double payment;
  int patient;
  int experience;
  double rating;
  List appointmentDays;
  List appointmentTimes;
  String aboutDoc;

  DoctorModel({
    required this.name,
    required this.imgUrl,
    required this.speciality,
    required this.payment,
    required this.patient,
    required this.experience,
    required this.rating,
    required this.appointmentDays,
    required this.appointmentTimes,
    required this.aboutDoc,
  });
}

class HospitalModel {
  String imgUrl;
  String hospitalname;
  String hospital_description;
  String location;
  double rating;
  String detail;

  HospitalModel({
    required this.imgUrl,
    required this.hospitalname,
    required this.hospital_description,
    required this.location,
    required this.rating,
    required this.detail,
  });
}

class MedicineModel {
  String imgUrl;
  String Productname;
  String ProductDetails;
  double price;

  MedicineModel({
    required this.imgUrl,
    required this.Productname,
    required this.price,
    required this.ProductDetails,
  });
}


class MedicineModels {
  String shopUrl;
  String shopName;
  String rating;
  String location;
  int contactNo;

  MedicineModels({
    required this.shopUrl,
    required this.shopName,
    required this.rating,
    required this.location,
    required this.contactNo,

  });
}
