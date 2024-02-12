import "package:http/http.dart" as http;
import 'dart:convert' as convert;
import "package:determined/utils/local-storage/index.dart";

get(String url) async {
  final String token = await localStorage.getString('token') ?? '';
  Uri u = Uri.http(url);
  return http
      .get(u, headers: <String, String>{"token": token}).then((value) => {
            if (value.statusCode == 200)
              {convert.jsonDecode(value.body) as Map<String, dynamic>}
          });
}
