import 'package:determined/utils/fetch/index.dart';

abstract class TokenResponse {
  late String token;
  TokenResponse({required this.token});
}

class UserApi {
  static Future<BaseResponse<TokenResponse>> postLogin() {
    return post("/api/login", body: {'account': 'admin', 'password': '123456'});
  }
}
