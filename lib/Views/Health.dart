import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app/Models/healthNewsModel.dart';
import 'package:task_app/Services/HealthNewsServices.dart';
import 'package:task_app/widget/CustomCircularProgressIndicator.dart';
import 'package:task_app/widget/CustomErrorTextMessage.dart';
import 'package:task_app/widget/CustomHealthListViewBuilder.dart';
import 'package:task_app/widget/customBodyText.dart';
import 'package:task_app/widget/custom_HeathNews.dart';

class HealthView extends StatefulWidget {
  HealthView();

  @override
  State<HealthView> createState() => _HealthViewState();
}

class _HealthViewState extends State<HealthView> {
  var futureResponse;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureResponse = NewsServices(dio: Dio()).getTobLinesHealthNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HealthArticleModel>?>(
      future: futureResponse,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomHealthListViewBuilder(
              healtharticles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return CustomErrorTextMessage();
        } else {
          return CustomCircularProgressIndicator();
        }
      },
    );
  }
}
