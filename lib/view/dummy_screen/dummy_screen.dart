
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:little_flower/controllers/attendence_controller/attendence_controller.dart';

class DummyScreen extends StatelessWidget {
   DummyScreen({super.key});
  final AttendanceController attendanceController =
      Get.put(AttendanceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(onPressed: ()async{
    
        }, icon:const Icon(Icons.abc)),
      ),
    );
  }
}