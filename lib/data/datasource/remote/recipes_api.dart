import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:recipes_app/core/constants/api_const.dart';
import 'package:recipes_app/data/models/news.dart';

class RecipesApi {
  final Dio dio;

  RecipesApi({required this.dio}) {
    dio.options.connectTimeout = const Duration(seconds: 10);
    dio.options.receiveTimeout = const Duration(seconds: 10);

    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (e, handler) async {
          final extra = e.requestOptions.extra;
          final retries = (extra['retries'] as int?) ?? 0;

          if ((e.type == DioExceptionType.connectionError ||
                  e.type == DioExceptionType.receiveTimeout ||
                  e.type == DioExceptionType.connectionTimeout) &&
              retries < 2) {
            final requestOptions = e.requestOptions;
            requestOptions.extra['retries'] = retries + 1;
            try {
              final response = await dio.fetch(requestOptions);
              return handler.resolve(response);
            } catch (err) {
              return handler.next(err as DioException);
            }
          }
          return handler.next(e);
        },
      ),
    );
  }

  Future<List<Recipe>> getRecipes() async {
    final response = await dio.get(ApiConstant.baseApiUrl);

    final Map<String, dynamic> jsonData;
    if (response.data is String) {
      jsonData = jsonDecode(response.data);
    } else if (response.data is Map<String, dynamic>) {
      jsonData = response.data;
    } else {
      throw Exception(
        'Неподдерживаемый тип данных: ${response.data.runtimeType}',
      );
    }

    final dataNews = News.fromJson(jsonData);

    return dataNews.news;
  }
}
