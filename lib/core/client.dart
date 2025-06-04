import 'package:dio/dio.dart';

import '../data/models/created_user_model.dart';
import 'interceptor.dart';

class ApiClient {
  ApiClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: "http://10.10.0.228:8888/api/v1",
        validateStatus: (value) => true,
      ),
    );
    dio.interceptors.add(AuthInterceptor());
  }

  late final Dio dio;

  Future<Map<String, dynamic>> login({
    required String login,
    required String password,
  }) async {
    var response = await dio.post(
      "/auth/login",
      data: {"login": login, "password": password},
    );
    if (response.statusCode == 200) {
      var data = Map<String, String>.from(response.data);
      String token = data["accessToken"]!.toString();
      return {"result": true, "token": token};
    } else {
      return {"result": false, "token": null};
    }
  }

  Future<Map<String, dynamic>> signUp({required CreatedUserModel user}) async {
    var responce = await dio.post("/auth/register", data: user.toJson());
    if (responce.statusCode == 201) {
      String token = responce.data["accessToken"];
      return {"result": true, "token": token};
    } else {
      return {"result": true, "token": null};
    }
  }

  Future<List<dynamic>> fetchCategories({
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.get(
      "/categories/list",
      queryParameters: queryParameters,
    );
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Something went wrong");
    }
  }

  Future<List<dynamic>> fetchCourses({
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.get(
      "/courses/list",
      queryParameters: queryParameters,
    );
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Something went wrong");
    }
  }

  Future<List<dynamic>> fetchInterviews({
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.get(
      "/interviews/list",
      queryParameters: queryParameters,
    );
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Something went wrong");
    }
  }

  Future<List<dynamic>> fetchSocialAccounts() async {
    var response = await dio.get("/social-accounts/list");
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Something went wrong");
    }
  }

  Future<String> me() async {
    var response = await dio.get("/auth/me");
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      return data["firstName"];
    } else {
      throw Exception("Something went wrong");
    }
  }
}
