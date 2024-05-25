import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/widget/CustomCardInfo.dart';
import 'package:task_app/widget/customBodyText.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: searchcontroller,
                onChanged: (value) {},
                onSubmitted: (value) {},
                decoration: InputDecoration(
                  hintText: 'ابحث هنا',
                  label: CustomBodyText(
                    text: 'ابحث ',
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: ListView(
                children: [
                  CustomCardInfo(),
                  CustomCardInfo(),
                  CustomCardInfo(),
                ],
              )

                  //   ListView.builder(
                  //     itemCount: 15,
                  //     itemBuilder: (context, index) {
                  //       return Card(
                  //         child: ListTile(

                  //           title: CustomBodyText(
                  //             text: 'Doctor name :  ',
                  //             textsize: 20,
                  //           ),
                  //           subtitle: CustomBodyText(
                  //             text: 'Date : 22/50/2024      Time: 3:30pm',
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
