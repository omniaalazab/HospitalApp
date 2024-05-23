import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/Views/NoteView.dart';
import 'package:task_app/widget/customBodyText.dart';

class CustomCardInfo extends StatelessWidget {
  CustomCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => NoteView()));
      },
      child: Card(
        // elevation: 0,
        child: ListTile(
          title: CustomBodyText(
            text: 'الدكتور  ',
            textsize: 20,
          ),
          subtitle: CustomBodyText(
            text: 'اليوم :     التاريخ :',
          ),
        ),
      ),
    );
  }
}
