import 'package:flutter/material.dart';
import 'package:task_app/Models/healthNewsModel.dart';
import 'package:task_app/widget/CustomAppBar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webScreenView extends StatefulWidget {
  webScreenView({super.key, required this.healtharticleModel});
  HealthArticleModel healtharticleModel;
  @override
  State<webScreenView> createState() => _webScreenViewState();
}

class _webScreenViewState extends State<webScreenView> {
  late final WebViewController controller;
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('${widget.healtharticleModel.url}'),
      );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(
          title: "التفاصيل",
        ),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
