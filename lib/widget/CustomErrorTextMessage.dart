import 'package:flutter/material.dart';
import 'package:task_app/widget/customBodyText.dart';

class CustomErrorTextMessage extends StatelessWidget {
  const CustomErrorTextMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomBodyText(
        text: 'oops!!try again',
        color: Colors.red,
      ),
    );
  }
}
