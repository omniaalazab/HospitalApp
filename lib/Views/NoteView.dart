import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app/widget/customBodyText.dart';

class NoteView extends StatelessWidget {
  NoteView({super.key});
  String noteText =
      "لبتتاهختاتلتاهختبختهخهتلبختخهتلاهخاتخلبتلانةممممجحمحمحجحةطمكرلاةطمكةرطكلامةمكلاةءؤمطلاةطمرنةطمنةطمنىةطمنةىطمنىءطمططخبيطبتخلتبانحا تابتياخحتبا ماطتنحختاحختخحتختسيبخت جميالدواء";
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          centerTitle: true,
          title: Text('الملاحظات'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: CustomBodyText(text: '   الدكتور  '),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CustomBodyText(text: '   المستشفى  '),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CustomBodyText(text: 'اليوم :     التاريخ :'),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CustomBodyText(text: noteText),
                  //     ) Card(
                  // // elevation: 0,
                  // child: ListTile(
                  //   title: CustomBodyText(
                  //     text: 'الدكتور  ',
                  //     textsize: 20,
                  //   ),
                  //   subtitle: CustomBodyText(
                  //     text: 'اليوم :     التاريخ :',
                  //   ),
                  // t
                  // ),
                ),
              ],
            )),
      ),
    );
  }
}
