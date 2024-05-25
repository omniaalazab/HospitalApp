import 'package:flutter/cupertino.dart';
import 'package:task_app/widget/customBodyText.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return (CustomBodyText(
      text: title,
    ));
  }
}
