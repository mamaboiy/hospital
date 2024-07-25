import 'package:doctor/model_class/doctors_model.dart';
import 'package:doctor/model_class/doctors_model.dart';
import 'package:doctor/model_class/doctors_model.dart';
import 'package:flutter/cupertino.dart';

List<DoctorModel> allDocs = [
  DoctorModel(
      name: 'Dr.Samuel Miller',
      imgUrl: 'assets/images/doctor1.png',
      speciality: 'Heart Decease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 90900,
      experience: 20,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
          'Dr. Samuel Miller is a leading heart disease specialist renowned for his expertise in cardiovascular health, patient care, and advanced treatment methods, dedicated to improving heart health outcomes. '),
  DoctorModel(
      name: 'Dr.Daniel Defo',
      imgUrl: 'assets/images/doctor2.png',
      speciality: 'Kidney Decease Specialist ',
      rating: 4.5,
      payment: 10000,
      patient: 11200,
      experience: 14,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
          ' Dr. Daniel Defo is a top kidney disease specialist, known for his exceptional care, innovative treatments, and dedication to improving renal health and patient outcomes.'),
  DoctorModel(
      name: 'Dr.Kinladilo',
      imgUrl: 'assets/images/doctor3.png',
      speciality: 'Brain Decease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 90800,
      experience: 24,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
          'Dr. Kinladilo is a renowned brain disease specialist, expert in diagnosing and treating neurological disorders, dedicated to advancing brain health and improving patient outcomes. '),
  DoctorModel(
      name: 'Dr. Lefron',
      imgUrl: 'assets/images/doctor4.png',
      speciality: 'Lung Decease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 12000,
      experience: 4,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
          'Dr. Lefron is a specialist in lung diseases, known for his extensive knowledge in respiratory disorders, innovative treatments, and commitment to enhancing patient lung health.'),
  DoctorModel(
      name: 'Dr,Mileer Ren',
      imgUrl: 'assets/images/doctor5.png',
      speciality: 'Dental  Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 15000,
      experience: 5,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc:
          'Dr. Mileer Renis is a distinguished dental specialist known for his expertise in oral health, cutting-edge treatments, and exceptional patient care, committed to creating beautiful, healthy smiles.'),
];

List<HospitalModel> alltype = [
  HospitalModel(
      imgUrl: 'assets/images/hospital1.jpg',
      hospitalname: 'Paro',
      hospital_description:
          'Committed to providing preventive, pro-motive, curative and rehabilitative healthcare, the hospital’s practices are based on evidence-based and holistic approaches. The hospital’s departments include orthopedics, ophthalmology, general medicine, gynecology and dentistry.',
      location: 'Paro, Bhutan',
      detail: 'Details  ',
      rating: 4.8),
  HospitalModel(
      imgUrl: 'assets/images/hospital2.jpg',
      hospitalname: 'Thimphu',
      hospital_description:
          'Named in honor of the third King Jigme Dorji Wangchuck, the hospital has been serving the people of Bhutan for a long time. With 350 beds, the hospital has several specializations such as general medicine, general surgery, orthopedics, psychiatry, dermatology, gynecology and pediatrics.',
      location: 'Thimphu, Bhutan',
      detail: 'Details  ',
      rating: 5),
  HospitalModel(
      imgUrl: 'assets/images/hospital3.jpg',
      hospitalname: 'Wangdi',
      hospital_description:
          'Committed to providing preventive, pro-motive, curative and rehabilitative healthcare, the hospital’s practices are based on evidence-based and holistic approaches. The hospital’s departments include orthopedics, ophthalmology, general medicine, gynecology and dentistry.',
      location: 'Wangdi, Bhutan',
      detail: 'Details  ',
      rating: 4.2),
  HospitalModel(
    imgUrl: 'assets/images/hospital4.jpg',
    hospitalname: 'Gelephu',
    hospital_description:
        'Committed to providing preventive, pro-motive, curative and rehabilitative healthcare, the hospital’s practices are based on evidence-based and holistic approaches. The hospital’s departments include orthopedics, ophthalmology, general medicine, gynecology and dentistry.',
    location: 'Gelephu, Bhutan',
    detail: 'Details  ',
    rating: 4.8,
  ),
  HospitalModel(
      imgUrl: 'assets/images/hospital5.jpg',
      hospitalname: 'Mongar',
      hospital_description:
          'A tertiary multi-specialty healthcare institution in eastern Bhutan, the hospital serves as regional referral hospital for the region, as well as a technical backup center for the hospitals in the east.',
      location: 'Mongar, Bhutan',
      detail: 'Details  ',
      rating: 4.6),
];


List<List>allMedicine=[
  [
    MedicineModel
    (
      imgUrl: 'assets/images/medicine1.png',
      Productname: 'Medicine1',
      ProductDetails: '',
      price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine2.png',
        Productname: 'Medicine2',
        ProductDetails: '',
        price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine3.png',
        Productname: 'Medicine3',
        ProductDetails: '',
        price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine4.png',
        Productname: 'Medicine4',
        ProductDetails: '',
        price:530),
  ],

  [
    MedicineModel
      (
        imgUrl: 'assets/images/medicine5.png',
        Productname: 'Medicine5',
        ProductDetails: '',
        price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine6.png',
        Productname: 'Medicine6',
        ProductDetails: '',
        price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine7.png',
        Productname: 'Medicine7',
        ProductDetails: '',
        price:530),
    MedicineModel(
        imgUrl: 'assets/images/medicine8.png',
        Productname: 'Medicine8',
        ProductDetails: '',
        price: 530),
  ],
  [
    MedicineModel
      (
        imgUrl: 'assets/images/medicine9.png',
        Productname: 'Medicine9',
        ProductDetails: '',
        price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine10.png',
        Productname: 'Medicine10',
        ProductDetails: '',
        price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine11.png',
        Productname: 'Medicine11',
        ProductDetails: '',
        price:530),
    MedicineModel
      (
        imgUrl: 'assets/images/medicine12.png',
        Productname: 'Medicine12',
        ProductDetails: '',
        price:530),

  ],

];

// List<MedicineModel>allmedic =
// [
//   MedicineModel
//     (
//     imgUrl: 'assets/images/medicine1.png',
//     Productname: 'Medicine1',
//     ProductDetails: '',
//     price:530),
//   MedicineModel
//     (
//     imgUrl: 'assets/images/medicine3.png',
//     Productname: 'Medicine1',
//     ProductDetails: '',
//     price:760,
//   ),
//   MedicineModel
//     (
//     imgUrl: 'assets/images/medicine3.png',
//     Productname: 'Medicine1',
//     ProductDetails: '',
//     price:235),
//
//   MedicineModel
//     (
//     imgUrl: 'assets/images/medicine1.png',
//     Productname: 'Medicine1',
//     ProductDetails: '',
//     price:1020),
//
// ];


List<MedicineModels> allShops = [
  MedicineModels(
      shopUrl: "assets/images/hospital1.jpg",
      shopName: "Kinlay Pharmacy",
      rating: "4.2",
      location: "Paro",
      contactNo: 17603802,
      ),
  MedicineModels(
      shopUrl: "assets/images/hospital2.jpg",
      shopName: "Nima Pharmacy",
      rating: "4.3",
      location: "Thimphu",
      contactNo: 17696514,
      ),
  MedicineModels(
      shopUrl: "assets/images/hospital3.jpg",
      shopName: "Ugyen Pharmacy",
      rating: "4.8",
      location: "Mongar",
      contactNo: 17117030,
      ),
  MedicineModels(
      shopUrl: "assets/images/hospital4.jpg",
      shopName: "Chimi Pharmacy",
      rating: "4.3 ",
      location: "Gelephu",
      contactNo: 17686833,
     ),
];
