import 'package:get/get.dart';
import 'package:imossadmin/modules/dashboard/provider/dashboard_provider.dart';

import '../models/post_response.dart';

class DashboardController extends GetxController {
  final DashboardProvider dashboardProvider = Get.put(DashboardProvider());

  RxBool isDataLoaded = false.obs;
  List<PostReponse> posts = [];
  PostReponse? singlePost;

  @override
  void onInit() {
    getDashboardData();
    super.onInit();
  }

  getDashboardData() async {
    await dashboardProvider.getAllPost(
      onSuccess: (List<PostReponse> posts) {
        posts = posts;
        isDataLoaded(true);
      },
      onFailed: (error) {},
    );
  }

  getSinglePost() async {
    await dashboardProvider.getSinglePost(
      onSuccess: (PostReponse post) {
        singlePost = post;
        isDataLoaded(true);
      },
      onFailed: (error) {},
    );
  }
}
