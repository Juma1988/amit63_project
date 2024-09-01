import 'package:dio/dio.dart';
import 'package:quick_log/quick_log.dart';

final log = const Logger('');

class DioHelper {
  DioHelper() {
    _dio.interceptors.add(AppInterceptor());
  }

  final _dio = Dio(
    BaseOptions(
      //baseUrl: "https://rickandmortyapi.com/api/",
      baseUrl: "https://project2.amit-learning.com/api",
      headers: {
        "Accept": "application/json",
        'Content-Type': 'multipart/form-data',
        'Authorization': '434|Dfm65OUDf601rNKg2wDW3MIyfH7VNIiizKJJslWA'
      },
      connectTimeout: Duration(seconds: 5),
      receiveDataWhenStatusError: true,
      receiveTimeout: Duration(seconds: 3),
    ),
  );

  Future<CustomResponse> get(String path) async {
    try {
      if (path.isEmpty) {
        // Fake API
        await Future.delayed(const Duration(seconds: 2));
        return CustomResponse(isSuccess: true);
      } else {
        final response = await _dio.get(path);
        return CustomResponse(isSuccess: true, data: response.data);
      }
    } on DioException catch (ex) {
      return handleException(ex);
    }
  }

  Future<CustomResponse> post(String path, {Map<String, dynamic>? data}) async {
    try {
      if (path.isEmpty) {
        await Future.delayed(const Duration(seconds: 2));
        return CustomResponse(isSuccess: true);
      } else {
        final response =
            await _dio.post(path, data: FormData.fromMap(data ?? {}));
        return CustomResponse(isSuccess: true, data: response.data);
      }
    } on DioException catch (ex) {
      return handleException(ex);
    } catch (e) {
      log.error("Unexpected error in push method: $e");
      return CustomResponse(
          isSuccess: false, message: "An unexpected error occurred");
    }
  }

  CustomResponse handleException(DioException ex) {
    String? msg = ex.response?.data["message"];
    // print("*" * 30);
    // log.error("DioException type: ${ex.type}");
    // log.error("DioException message: ${ex.message}");
    // log.error("DioException message: ${ex.response?.statusCode}");
    // log.error("DioException response: ${ex.response?.data}");
    return CustomResponse(
        isSuccess: false,
        message: msg ?? ex.type.name,
        data: ex.response?.data);
  }
}

class CustomResponse {
  final bool isSuccess;
  final dynamic data;
  String? message;

  CustomResponse({required this.isSuccess, this.message, this.data}) {
    message = message ?? data?["message"] ?? "Failed Try Again Later";
  }
}

class AppInterceptor extends Interceptor {
  final log = const Logger('');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    // log.fine("onRequest");
    // log.info("( ${options.method} )${options.baseUrl}${options.path}");
    // log.fine("Headers:");
    // log.fine(options.headers);
    // log.fine("Data");
    // log.fine(options.data);
    // log.fine("Query Parameters");
    // log.fine(options.queryParameters);
    // options.headers.putIfAbsent(
    //   "Authorization",
    //   () => "Bearer ${CacheHelper.token}",
    // );
    // log.fine("*" * 30);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    // log.fine("onResponse");
    // log.fine(response.data);
    // log.fine("*" * 30);
  }
}
