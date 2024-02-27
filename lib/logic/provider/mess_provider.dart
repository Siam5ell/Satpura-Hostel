import 'package:flutter/cupertino.dart';
import 'package:hostelapplication/logic/modules/mess_model.dart';
import 'package:hostelapplication/logic/service/fireStoreServices/mess_firestore_service.dart';

class MessProvider with ChangeNotifier {
  final service = MessFirestoreService();
  late String _id;
  late String _sundayB;
  late String _sundayL;
  late String _sundayS;
  late String _sundayD;
  late String _mondayB;
  late String _mondayL;
  late String _mondayS;
  late String _mondayD;
  late String _tuesdayB;
  late String _tuesdayL;
  late String _tuesdayS;
  late String _tuesdayD;
  late String _wednesdayB;
  late String _wednesdayL;
  late String _wednesdayS;
  late String _wednesdayD;
  late String _thursdayB;
  late String _thursdayL;
  late String _thursdayS;
  late String _thursdayD;
  late String _fridayB;
  late String _fridayL;
  late String _fridayS;
  late String _fridayD;
  late String _saturdayB;
  late String _saturdayL;
  late String _saturdayS;
  late String _saturdayD;

  // getter
  String get getId => _id;
  String get getSundayB => _sundayB;
  String get getSundayL => _sundayL;
  String get getSundayS => _sundayS;
  String get getSundayD => _sundayD;
  String get getMondayB => _mondayB;
  String get getMondayL => _mondayL;
  String get getMondayS => _mondayS;
  String get getMondayD => _mondayD;
  String get getTuesdayB => _tuesdayB;
  String get getTuesdayL => _tuesdayL;
  String get getTuesdayS => _tuesdayS;
  String get getTuesdayD => _tuesdayD;
  String get getWednesdayB => _wednesdayB;
  String get getWednesdayL => _wednesdayL;
  String get getWednesdayS => _wednesdayS;
  String get getWednesdayD => _wednesdayD;
  String get getThursdayB => _thursdayB;
  String get getThursdayL => _thursdayL;
  String get getThursdayS => _thursdayS;
  String get getThursdayD => _thursdayD;
  String get getFridayB => _fridayB;
  String get getFridayL => _fridayL;
  String get getFridayS => _fridayS;
  String get getFridayD => _fridayD;
  String get getSaturdayB => _saturdayB;
  String get getSaturdayL => _saturdayL;
  String get getSaturdayS => _saturdayS;
  String get getSaturdayD => _saturdayD;

  // setter
  void changeId(String value) {
    _id = value;
    notifyListeners();
  }

  void changeSundayB(String value) {
    _sundayB = value;
    notifyListeners();
  }

  void changeSundayL(String value) {
    _sundayL = value;
    notifyListeners();
  }

  void changeSundayS(String value) {
    _sundayS = value;
    notifyListeners();
  }

  void changeSundayD(String value) {
    _sundayD = value;
    notifyListeners();
  }

  void changeMondayB(String value) {
    _mondayB = value;
    notifyListeners();
  }

  void changeMondayL(String value) {
    _mondayL = value;
    notifyListeners();
  }

  void changeMondayS(String value) {
    _mondayS = value;
    notifyListeners();
  }

  void changeMondayD(String value) {
    _mondayD = value;
    notifyListeners();
  }

  void changeTuesdayB(String value) {
    _tuesdayB = value;
    notifyListeners();
  }

  void changeTuesdayL(String value) {
    _tuesdayL = value;
    notifyListeners();
  }

  void changeTuesdayS(String value) {
    _tuesdayS = value;
    notifyListeners();
  }

  void changeTuesdayD(String value) {
    _tuesdayD = value;
    notifyListeners();
  }

  void changeWednesdayB(String value) {
    _wednesdayB = value;
    notifyListeners();
  }

  void changeWednesdayL(String value) {
    _wednesdayL = value;
    notifyListeners();
  }

  void changeWednesdayS(String value) {
    _wednesdayS = value;
    notifyListeners();
  }

  void changeWednesdayD(String value) {
    _wednesdayD = value;
    notifyListeners();
  }

  void changeThursdayB(String value) {
    _thursdayB = value;
    notifyListeners();
  }

  void changeThursdayL(String value) {
    _thursdayL = value;
    notifyListeners();
  }

  void changeThursdayS(String value) {
    _thursdayS = value;
    notifyListeners();
  }

  void changeThursdayD(String value) {
    _thursdayD = value;
    notifyListeners();
  }

  void changeFridayB(String value) {
    _fridayB = value;
    notifyListeners();
  }

  void changeFridayL(String value) {
    _fridayL = value;
    notifyListeners();
  }

  void changeFridayS(String value) {
    _fridayS = value;
    notifyListeners();
  }

  void changeFridayD(String value) {
    _fridayD = value;
    notifyListeners();
  }

  void changeSaturdayB(String value) {
    _saturdayB = value;
    notifyListeners();
  }

  void changeSaturdayL(String value) {
    _saturdayL = value;
    notifyListeners();
  }

  void changeSaturdayS(String value) {
    _saturdayS = value;
    notifyListeners();
  }

  void changeSaturdayD(String value) {
    _saturdayD = value;
    notifyListeners();
  }

  void saveMess() async {
    var newMess = Mess(
      id: "123",
      sunday_b: getSundayB,
      sunday_l: getSundayL,
      sunday_s: getSundayS,
      sunday_d: getSundayD,
      monday_b: getMondayB,
      monday_l: getMondayL,
      monday_s: getMondayS,
      monday_d: getMondayD,
      tuesday_b: getTuesdayB,
      tuesday_l: getTuesdayL,
      tuesday_s: getTuesdayS,
      tuesday_d: getTuesdayD,
      wednesday_b: getWednesdayB,
      wednesday_l: getWednesdayL,
      wednesday_s: getWednesdayS,
      wednesday_d: getWednesdayD,
      thursday_b: getThursdayB,
      thursday_l: getThursdayL,
      thursday_s: getThursdayS,
      thursday_d: getThursdayD,
      friday_b: getFridayB,
      friday_l: getFridayL,
      friday_s: getFridayS,
      friday_d: getFridayD,
      saturday_b: getSaturdayB,
      saturday_l: getSaturdayL,
      saturday_s: getSaturdayS,
      saturday_d: getSaturdayD,
    );
    await service.saveMess(newMess);
  }

  Future<void> deleteMess(messId) async {
    await service.removeMess(messId);
  }

  Future<void> chageStatus(status, messId) async {
    await service.changeMessStatus(status, messId);
  }

  Future<void> updateSundayB() async {
    await service.updateSundayB(_sundayB);
  }

  Future<void> updateSundayL() async {
    await service.updateSundayL(_sundayL);
  }

  Future<void> updateSundayS() async {
    await service.updateSundayS(_sundayS);
  }

  Future<void> updateSundayD() async {
    await service.updateSundayD(_sundayD);
  }

  Future<void> updateMondayB() async {
    await service.updateMondayB(_mondayB);
  }

  Future<void> updateMondayL() async {
    await service.updateMondayL(_mondayL);
  }

  Future<void> updateMondayS() async {
    await service.updateMondayS(_mondayS);
  }

  Future<void> updateMondayD() async {
    await service.updateMondayD(_mondayD);
  }

  Future<void> updateTuesdayB() async {
    await service.updateTuesdayB(_tuesdayB);
  }

  Future<void> updateTuesdayL() async {
    await service.updateTuesdayL(_tuesdayL);
  }

  Future<void> updateTuesdayS() async {
    await service.updateTuesdayS(_tuesdayS);
  }

  Future<void> updateTuesdayD() async {
    await service.updateTuesdayD(_tuesdayD);
  }

  Future<void> updateWednesdayB() async {
    await service.updateWednesdayB(_wednesdayB);
  }

  Future<void> updateWednesdayL() async {
    await service.updateWednesdayL(_wednesdayL);
  }

  Future<void> updateWednesdayS() async {
    await service.updateWednesdayS(_wednesdayS);
  }

  Future<void> updateWednesdayD() async {
    await service.updateWednesdayD(_wednesdayD);
  }

  Future<void> updateThursdayB() async {
    await service.updateThursdayB(_thursdayB);
  }

  Future<void> updateThursdayL() async {
    await service.updateThursdayL(_thursdayL);
  }

  Future<void> updateThursdayS() async {
    await service.updateThursdayS(_thursdayS);
  }

  Future<void> updateThursdayD() async {
    await service.updateThursdayD(_thursdayD);
  }

  Future<void> updateFridayB() async {
    await service.updateFridayB(_fridayB);
  }

  Future<void> updateFridayL() async {
    await service.updateFridayL(_fridayL);
  }

  Future<void> updateFridayS() async {
    await service.updateFridayS(_fridayS);
  }

  Future<void> updateFridayD() async {
    await service.updateFridayD(_fridayD);
  }

  Future<void> updateSaturdayB() async {
    await service.updateSaturdayB(_saturdayB);
  }

  Future<void> updateSaturdayL() async {
    await service.updateSaturdayL(_saturdayL);
  }

  Future<void> updateSaturdayS() async {
    await service.updateSaturdayS(_saturdayS);
  }

  Future<void> updateSaturdayD() async {
    await service.updateSaturdayD(_saturdayD);
  }
}
