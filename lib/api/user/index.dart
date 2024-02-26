import 'package:determined/utils/fetch/index.dart';

class TokenResponse {
  late String token;
  TokenResponse({required this.token});
  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(token: json['token']);
  }
}

class UserApi {
  static Future<BaseResponse<TokenResponse>> postLogin(
      String account, String password) async {
    final data = await post("/api/login",
        body: {'account': account, 'password': password});
    return BaseResponse.fromJson(data, (json) => TokenResponse.fromJson(json));
  }
}
