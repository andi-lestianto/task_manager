import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_manager/models/post/post.dart';

class PostOperation with ChangeNotifier {
  List<Post> _post = [];

  PostOperation() {
    getDataPost();
  }

  List<Post> getData() {
    if (_post.isEmpty) {
      getDataPost();
      return _post;
    }

    return _post;
  }

  Future<dynamic> getDataPost() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      List<dynamic> responseData = response.data;
      print(responseData);
      _post.addAll(responseData.map((e) => Post.fromJson(e)));
      notifyListeners();
    } on DioError catch (e) {
      print(e.response);
    } catch (e) {
      print(e);
    }
    // print('Post Operation is running');
  }

  Future<dynamic> getPostDetail() async {
    try {} catch (e) {}
  }
}
