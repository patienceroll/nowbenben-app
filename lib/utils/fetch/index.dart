import "package:http/http.dart" as http;
import 'dart:convert' as convert;
import 'package:json_annotation/json_annotation.dart';

import "package:determined/utils/local-storage/index.dart";

part "index.g.dart";

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  int status;
  T data;
  String message;

  BaseResponse(
      {required this.status, required this.message, required this.data});
  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$BaseResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseResponseToJson<T>(this, toJsonT);
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
      final data = convert.jsonDecode(value.body);
      return BaseResponse.fromJson(data, (json) => json);
    } else {
      throw Exception("接口请求错误");
    }
  });
}

Future<BaseResponse<T>> post<T>(String url, {Object? body}) async {
  Uri u = Uri.http(ProjectRuntimeConfig.baseUrl, url);
  return http.post(u, headers: await getHeader(), body: body).then((value) {
    if (value.statusCode == 200) {
      return BaseResponse.fromJson(
          convert.jsonDecode(value.body), (json) => json);
    } else {
      throw Exception("接口请求错误");
    }
  });
}
