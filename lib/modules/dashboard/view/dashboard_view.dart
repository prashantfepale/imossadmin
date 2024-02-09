import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imossadmin/modules/dashboard/models/post_response.dart';

import '../../../shared/style/app_colors.dart';
import '../../../shared/widget/bottom_navigation.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.body,
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: SingleChildScrollView(
          child: (controller.isDataLoaded.value)
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.listOfPost?.length ?? 0,
                  itemBuilder: (context, index) {
                    return showSinglePost(controller.listOfPost![index]);
                  },
                )
              : ElevatedButton(
                  onPressed: () {
                    controller.getSinglePost();
                  },
                  child: Text("Get Posts"),
                ),
        ),
        bottomNavigationBar: customBottomNavigation(),
      ),
    );
  }

  showSinglePost(PostReponse singelPost) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.boxShadowColor,
                blurRadius: 3.0,
                spreadRadius: 3.0,
              )
            ],
          ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom:10,left: 10,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("userid: " + singelPost.userId.toString()),
          SizedBox(height: 10),
          Text("id :" + singelPost.id.toString()),
          SizedBox(height: 10),
          Text("title: "),
          Text(singelPost.title.toString()),
        ],
      ),
    );
  }
}
