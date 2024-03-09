import 'package:dio/dio.dart';
import 'package:shionogi_trial/Presentation/Pages/login_page.dart';

class ApiService {
  final Dio dio = Dio();

  // final TextEditingController email = TextEditingController();
  // final TextEditingController password = TextEditingController();
  final email = LoginPage().emailCont.text;
  final password = LoginPage().passwordCont.text;

  Future<String?> getToken() async {
    try {
      var payloadA = {
        "email": "Dawn.Ruccella@uatshionogi.com",
        "password": "radius123"
        // "email":"$email",
        // "password":"$password"
      };
      // print(email.text);
      Response response = await dio.post(
          'https://shionogiuat.radiusdirect.net/coreapi/v2/userlogin',
          data: payloadA);
      if (response.statusCode == 200) {
        String token = response.data["token"];
        // print(payloadA);
        // print(token);
        return token;
      } else {
        print('Login Failed: ${response.statusCode}');
        return null;
      }
    } catch (error) {
      print('Dio error: $error');
      return null;
    }
  }

  Future<Response?> getTokenList() async {
    try {
      var payloadA = {
        "email": "Dawn.Ruccella@uatshionogi.com",
        "password": "radius123"
      };
      Response response = await dio.post(
          'https://shionogiuat.radiusdirect.net/coreapi/v2/userlogin',
          data: payloadA);
      if (response.statusCode == 200) {
        // print(response);
        return response;
      } else {
        print('Login Failed: ${response.statusCode}');
        return null;
      }
    } catch (error) {
      print('Dio error: $error');
      return null;
    }
  }

  Future<Response?> fetchTodayList(int todayIndex) async {
    final bearerToken = await getToken();
    try {
      var payloadA = {
        "type": "Today",
        "page": todayIndex,
        "limit": 6,
        "start_time": "2024-02-28T18:30:00.000Z",
        "end_time": "2024-02-29T18:29:59.000Z",
        "dashboard": 1
      };
      dio.options.headers['Authorization'] = 'Bearer ${bearerToken ?? ""}';
      Response response = await dio.post(
          'https://shionogiuat.radiusdirect.net/coreapi/v2/listEngagement',
          data: payloadA);
      if (response.statusCode == 200) {
        return response;
      } else {
        print('API request failed: ${response.statusCode}');
      }
    } catch (error) {
      print('Dio error2: $error}');
    }
    return null;
  }

  Future<Response?> fetchFutureList(int futureIndex) async {
    final bearerToken = await getToken();
    try {
      var payloadA = {
        "type": "Future",
        "page": futureIndex,
        "limit": 6,
        "start_time": "2024-02-28T18:30:00.000Z",
        "end_time": "2024-02-29T18:29:59.000Z",
        "dashboard": 1
      };
      dio.options.headers['Authorization'] = 'Bearer ${bearerToken ?? ""}';
      Response response = await dio.post(
          'https://shionogiuat.radiusdirect.net/coreapi/v2/listEngagement',
          data: payloadA);
      if (response.statusCode == 200) {
        return response;
      } else {
        print('API request failed: ${response.statusCode}');
      }
    } catch (error) {
      print('Dio error2: $error}');
    }
    return null;
  }

  Future<Response?> fetchTodayEngagements(String meetingId) async {
    final bearerToken = await getToken();
    try {
      dio.options.headers['Authorization'] = 'Bearer ${bearerToken ?? ""}';
      Response response = await dio.get(
        'https://shionogiuat.radiusdirect.net/coreapi/v2/engagementDetailsNew?meeting=$meetingId',
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        print('API request failed: ${response.statusCode}');
      }
    } catch (error) {
      print('Dio error2: $error}');
    }
    return null;
  }
}
