import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient() : dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.rehlati-besehati.demo/', // Mock Supabase edge function or REST API URL
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  // Example GET method wrapper
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.get(path, queryParameters: queryParameters);
    } catch (e) {
      rethrow;
    }
  }

  // Example POST method wrapper
  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await dio.post(path, data: data);
    } catch (e) {
      rethrow;
    }
  }
}
