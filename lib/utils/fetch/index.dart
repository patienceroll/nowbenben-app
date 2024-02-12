import "dart:developer";
import "package:http/http.dart" as http;
import 'dart:convert' as convert;

import "package:determined/utils/local-storage/index.dart";

class BaseResponse<T> {
  int status;
  T data;
  String message;

  BaseResponse(
      {required this.status, required this.message, required this.data});

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    log(json['status'].runtimeType.toString());
    return BaseResponse(
      status: json['status'],
      message: json['message'],
      data: json['data'],
    );
  }
}

class ProjectRuntimeConfig {
  static String get baseUrl {
    return "118.89.67.217:9638";
  }
}

Future<Map<String, String>> getHeader() async {
  return {
    'Terminal': 'PC',
    "Authorization": await localStorage.getString('authorization') ?? ''
  };
}

Future<BaseResponse<T>> get<T>(String url) async {
  Uri u = Uri.http(ProjectRuntimeConfig.baseUrl, url);
  return http.get(u, headers: await getHeader()).then((value) {
    if (value.statusCode == 200) {
      return BaseResponse<T>.fromJson(convert.jsonDecode(value.body));
    } else {
      throw Exception("接口请求错误");
    }
  });
}

Future<BaseResponse<T>> post<T>(String url, {Object? body}) async {
  Uri u = Uri.http(ProjectRuntimeConfig.baseUrl, url);
  return http.post(u, headers: await getHeader(), body: body).then((value) {
    if (value.statusCode == 200) {
      return BaseResponse<T>.fromJson(convert.jsonDecode(value.body));
    } else {
      throw Exception("接口请求错误");
    }
  });
}
