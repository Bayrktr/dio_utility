import 'package:dio/dio.dart';
import 'package:tovivu_mbl/app/product/manager/user_manager/user_manager.dart';

class DioIntercepter extends Interceptor {
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = UserManager.instance.token;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
      return handler.next(options);
    }
  }
}
