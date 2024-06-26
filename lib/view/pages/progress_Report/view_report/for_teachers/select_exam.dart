import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:little_flower/view/colors/colors.dart';
import 'package:little_flower/view/pages/progress_Report/view_report/for_teachers/select_student.dart';
import 'package:little_flower/view/widgets/appbar_color/appbar_clr.dart';

class SelectExamsForProgressreport extends StatelessWidget {
  final String schooilID;
  final String batchId;
  final String classID;
  const SelectExamsForProgressreport(
      {required this.batchId,
      required this.classID,
      required this.schooilID,
      super.key});

  @override
  Widget build(BuildContext context) {
    int columnCount = 3;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Exam".tr),
        flexibleSpace: const AppBarColorWidget(),
        foregroundColor: cWhite,
        //backgroundColor: adminePrimayColor,
      ),
      body: SafeArea(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("SchoolListCollection")
                  .doc(schooilID)
                  .collection(batchId)
                  .doc(batchId)
                  .collection("classes")
                  .doc(classID)
                  .collection("ProgressReport")
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return AnimationLimiter(
                    child: GridView.count(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      padding: EdgeInsets.all(w / 60),
                      crossAxisCount: columnCount,
                      children: List.generate(
                        snapshot.data!.docs.length,
                        (int index) {
                          return AnimationConfiguration.staggeredGrid(
                            position: index,
                            duration: const Duration(milliseconds: 200),
                            columnCount: columnCount,
                            child: ScaleAnimation(
                              duration: const Duration(milliseconds: 900),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: FadeInAnimation(
                                child: GestureDetector(
                                  onTap: () {
                                     Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return SelectStudentsListScreen(
                                        schooilID: schooilID,
                                        classID: classID,
                                        examName: snapshot.data?.docs[index]
                                                ['docid'] ??
                                            '',
                                        batchId: batchId);
                                    },));
                                    // Get.off(() => SelectStudentsListScreen(
                                    //     schooilID: schooilID,
                                    //     classID: classID,
                                    //     examName: snapshot.data?.docs[index]
                                    //             ['docid'] ??
                                    //         '',
                                    //     batchId: batchId));
                                  },
                                  child: Container(
                                    height: h / 100,
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                        bottom: w / 10,
                                        left: w / 50,
                                        right: w / 50),
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(212, 67, 30, 203)
                                              .withOpacity(0.1),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 40,
                                          spreadRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        snapshot.data!.docs[index]
                                            .data()['docid'],
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
              })),
    );
  }
}
