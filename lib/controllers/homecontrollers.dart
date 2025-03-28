import 'package:final_exma/models/sqlmodels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactsController extends GetxController {
  DateTime date = DateTime.now();
  TimeOfDay t1 = TimeOfDay.now();
  void changeTime(TimeOfDay T1) {
    t1 = T1;
    update();
  }

  void changeDatetime(DateTime datetime) {
    date = datetime;
    update();
  }

  void addcontact(Contact contact) {
    update();
  }

  void deletecontact(int index) {
    update();
  }
}
