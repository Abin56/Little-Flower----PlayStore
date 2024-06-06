import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:little_flower/model/teacher_model/subjects_model.dart';

import '../../../../controllers/teacher_home/class_test_controller/class_test_controller.dart';
import '../../../../controllers/teacher_home/class_test_list_controller.dart';
import '../../../../utils/utils.dart';
import '../../../colors/colors.dart';
import '../../../constant/sizes/sizes.dart';
import 'class_test_list_page.dart';
import 'widgets/test_button_widget.dart';
import 'widgets/test_text_form_widget.dart';

class ClassTestPage extends StatelessWidget {
  ClassTestPage({super.key});

  final ClassTestController classTestController =
      Get.put(ClassTestController());
  final ClassListShowController classListShowController =
      Get.put(ClassListShowController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: adminePrimayColor,
        title:  Text('Create Test'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              //title
              const Icon(
                size: 120,
                Icons.sticky_note_2_outlined,
                color: adminePrimayColor,
              ),
               Text(
                'Create Class Test'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              kHeight30,
              //text form field for creating text
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: cgrey1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        DropdownSearch<SubjectModel>(
                          asyncItems: (String filter) =>
                              classTestController.fetchAllSubjectsFromClass(),
                          itemAsString: (SubjectModel u) => u.subjectName,
                          onChanged: (SubjectModel? data) {
                            classTestController.subjectModel = data;
                          },
                          dropdownDecoratorProps: const DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                labelText: "Subject Name",
                                prefixIcon: Icon(Icons.subject)),
                          ),
                        ),
                        TestTextFormWidget(
                          textEditingController:
                              classTestController.testNameController,
                          icons: Icons.title,
                          label: "Test Name",
                        ),
                        TestTextFormWidget(
                          textEditingController:
                              classTestController.descriptionController,
                          icons: Icons.note,
                          label: "Description",
                        ),
                        TestTextFormWidget(
                          readOnly: true,
                          icons: Icons.date_range,
                          label: "Test Date",
                          textEditingController:
                              classTestController.dateController,
                          onTap: () async {
                            final int date =
                                await dateTimePickerTimeStamp(context);
                            if (date != -1) {
                              classTestController.dateController.text =
                                  timeStampToDateFormat(date);
                              classTestController.date = date;
                            }
                          },
                        ),
                        TestTextFormWidget(
                          readOnly: true,
                          icons: Icons.timer,
                          label: "Test Time",
                          textEditingController:
                              classTestController.timeController,
                          onTap: () async {
                            final String time = await timePicker(context);
                            if (time.isNotEmpty) {
                              classTestController.time = time;
                              classTestController.timeController.text = time;
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              kHeight20,

              //create button
              TestElevatedButton(
                title: "Create".tr,
                voidCallback: () async {
                  if (!classTestController.isFieldEmpty()) {
                    await classTestController.createNewClassTest();
                  }
                },
              ),
              kHeight20,
              //show button
              TestElevatedButton(
                title: "Show Created Test".tr,
                voidCallback: () =>
                    classListShowController.fetchAllClassTest().then((value) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ClassTestListPage(),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
