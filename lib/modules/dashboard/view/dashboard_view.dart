import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imossadmin/modules/dashboard/models/post_response.dart';

import '../../../shared/widget/bottom_navigation.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: SingleChildScrollView(
          child: (controller.isDataLoaded.value)
              ? showSinglePost(controller.singlePost!)
              // ListView.builder(
              //     shrinkWrap: true,
              //     physics: const NeverScrollableScrollPhysics(),
              //     itemCount: (controller.posts.length),
              //     itemBuilder: (context, index) {
              //       return showSinglePost(controller.posts[index]);
              //     },
              //   )
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
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("userid" + singelPost.userId.toString()),
          SizedBox(height: 10),
          Text("id" + singelPost.id.toString()),
          SizedBox(height: 10),
          Text("title"),
          Text(singelPost.title.toString()),
        ],
      ),
    );
  }
}
