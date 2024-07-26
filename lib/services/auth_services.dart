import 'package:dio/dio.dart';
import 'package:doctors_task/model/auth/login_mode.dart';

class AuthServices {
  Dio _dio = Dio();

  Future<String> loginByEmail(LoginModel user) async {
    Response response = await _dio.post(
      "https://sendcode.onrender.com/sendEmail",
      data: user.toJson(),
    );
    print("Services");
    print(response.data['code']);
    return response.data['code'].toString();
  }
}
