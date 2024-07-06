import 'package:dio/dio.dart';

import 'base_api.dart';
import 'base_url.dart';

class ApiService extends BaseApi {
  ApiService(Dio dio) : super(dio, BaseUrl.baseUrl);
  Future<Response> register(Map<String, dynamic> userData) async {
    try {
      final response = await post('/api/register-user', data: userData);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
