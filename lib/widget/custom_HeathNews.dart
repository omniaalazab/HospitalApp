import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/Models/healthNewsModel.dart';
import 'package:task_app/Views/webpageView.dart';
import 'package:task_app/widget/customBodyText.dart';

class CustomHeathNews extends StatelessWidget {
  CustomHeathNews({required this.healtharticleModel});
  HealthArticleModel healtharticleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: Image.network(
              healtharticleModel.image ??
                  "https://img.freepik.com/free-photo/close-up-doctor-with-stethoscope_23-2149191355.jpg?w=740&t=st=1716672037~exp=1716672637~hmac=f133f7e7d68fbc93af4e3457b7ec3cda5e2ac6ac8e7ef2bac05bb3ab3e6e89dd",
              fit: BoxFit.cover,
            ),
            width: double.infinity,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: CustomBodyText(text: healtharticleModel.title ?? "العنوان"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => webScreenView(
                          healtharticleModel: healtharticleModel,
                        )),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomBodyText(text: healtharticleModel.description ?? "الوصف"),
          SizedBox(
            height: 20,
          ),
          CustomBodyText(
            text: healtharticleModel.content ?? " محتوى الخبر ",
            textsize: 15,
          ),
        ],
      ),
    );
  }
}
