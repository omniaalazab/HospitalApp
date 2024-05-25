import 'package:flutter/material.dart';
import 'package:task_app/Models/healthNewsModel.dart';
import 'package:task_app/widget/custom_HeathNews.dart';

class CustomHealthListViewBuilder extends StatelessWidget {
  const CustomHealthListViewBuilder({
    super.key,
    required this.healtharticles,
  });

  final List<HealthArticleModel> healtharticles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: healtharticles.length,
            itemBuilder: (context, index) {
              return CustomHeathNews(
                healtharticleModel: healtharticles[index],
              );
            },
          )),
        ],
      ),
    );
  }
}
