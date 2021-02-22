import 'package:http/http.dart';

class HttpService {
  //Domain
  static String BASE = 'dummy.restapiexample.com';
  //Api
  static String Api_Employees = 'api/v1/employees';
  //params

  static Map<String, String> emptyParam() {
    Map<String, String> params = Map();
    return params;
  }

  // request
  static Future<String> GET(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api, params);
    var response = await get(uri);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }
}
