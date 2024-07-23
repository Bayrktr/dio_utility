import 'package:dio/dio.dart';
import 'package:tovivu_mbl/app/core/constants/settings.dart';
import 'package:tovivu_mbl/app/core/model/base_model.dart';
import 'package:tovivu_mbl/app/core/utility/dio_utilty/dio_enums.dart';
import 'package:tovivu_mbl/app/core/utility/dio_utilty/dio_intercepter.dart';

/// Dio Utility class

mixin DioUtility {
  /// Fetch data function
  Future<T?>? fetchSingleData<T extends BaseModel<dynamic>,
          U extends BaseModel<dynamic>>(

      /// fetch data parameters
      {
    required DioEnums dioEnums,
    required T model,
    Map<String, dynamic>? body,
    Options? dioOptions,
    DioIntercepter? interceptor,
  }) async {
    final dio = Dio();

    interceptor != null ? dio.interceptors.add(interceptor) : null;

    try {
      final response = await dio.get<dynamic>(
        dioEnums.getPath,
        options: dioOptions ?? Settings.dioOptions,
        data: body,
      );

      final statusCode = response.statusCode;

      if (statusCode == 200) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          return model.fromJson(data) as T?;
        }
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }

    return null;
  }

  /// post data function
  Future<T?> postData<T extends BaseModel<dynamic>>({
    required DioEnums dioEnums,
    required Map<String, dynamic> body,
    required T model,
    DioIntercepter? interceptor,
  }) async {
    final dio = Dio();

    interceptor != null ? dio.interceptors.add(interceptor) : null;

    try {
      final response = await dio.post<dynamic>(
        dioEnums.getPath,
        data: body,
      );
      final statusCode = response.statusCode;

      if (statusCode == 200 || statusCode == 201) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          return model.fromJson(data) as T?;
        }
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }

    return null;
  }

  Future<T?> putData<T extends BaseModel<dynamic>>({
    required DioEnums dioEnums,
    required Map<String, dynamic> body,
    required T model,
    DioIntercepter? interceptor,
  }) async {
    final dio = Dio();
    interceptor != null ? dio.interceptors.add(interceptor) : null;

    try {
      final response = await dio.put<dynamic>(
        dioEnums.getPath,
        data: body,
      );
      final statusCode = response.statusCode;

      if (statusCode == 200 || statusCode == 201) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          return model.fromJson(data) as T?;
        }
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }

    return null;
  }

  Future<T?> deleteData<T extends BaseModel<dynamic>>({
    required DioEnums dioEnums,
    required Map<String, dynamic> body,
    required T model,
    DioIntercepter? interceptor,
  }) async {
    final dio = Dio();
    interceptor != null ? dio.interceptors.add(interceptor) : null;

    try {
      final response = await dio.delete<dynamic>(
        dioEnums.getPath,
        data: body,
      );
      final statusCode = response.statusCode;

      if (statusCode == 200 || statusCode == 201) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          return model.fromJson(data) as T?;
        }
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }

    return null;
  }
}
