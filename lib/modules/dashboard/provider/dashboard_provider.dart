import 'package:get/get.dart';

import '../../../environment/environment.dart';
import '../models/post_response.dart';

class DashboardProvider extends GetConnect {
  DashboardProvider() {
    timeout = Duration(minutes: Environment().config!.timeout);
  }
  String? baseurl = Environment().config?.baseurl;

  Future<dynamic> getAllPost({
    required Function(List<PostReponse> postList) onSuccess,
    required Function(String? error) onFailed,
  }) async {
    String resourceUrl = "https://jsonplaceholder.typicode.com/posts";
    final response = await get(resourceUrl);
    
    var responseBody = response.body;
    if (response.status.hasError) {
      onFailed(responseBody['message']);
      return;
    } else {
      List<PostReponse> postList = List<PostReponse>.from(
        responseBody.map((post) => PostReponse.fromJson(post)),
      );
      onSuccess(postList);
    }
  }

  Future<dynamic> getSinglePost({
    required Function(PostReponse post) onSuccess,
    required Function(String? error) onFailed,
  }) async {
    String resourceUrl = "https://jsonplaceholder.typicode.com/todos/1";
    final response = await get(resourceUrl);
    
    var responseBody = response.body;
    if (response.status.hasError) {
      onFailed(responseBody['message']);
      return;
    } else {
      onSuccess(PostReponse.fromJson(responseBody));
    }
  }


  
}
