import 'dart:io';


import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:igpzr/core/base/base_notify/base_notify_store.dart';
import 'package:igpzr/core/config/app_config.dart';
import 'package:igpzr/core/enums/alert_type_enum.dart';
import 'package:igpzr/core/models/api_result.dart';
import 'package:igpzr/init/locator.dart';

class HttpService {
  Dio dio = Dio();

  HttpService() {
    initInterceptor();
  }

  late String contentTypeHeader;
  Future<void> initInterceptor() async {
    try {
      dio = Dio();

      dio.interceptors.add(
        InterceptorsWrapper(
          onError: (e, handler) {
            locator<NotifyStore>().showNotify(
              type: NotifyType.error,
              value: "${e.response?.statusCode} - ${e.response?.statusMessage}",
            );

            return handler.next(e);
          },
          onRequest: (RequestOptions options, handler) async {
            Map<String, String> headers = {
              HttpHeaders.contentTypeHeader: "application/json",
            };
          
         
            

            return handler.next(options);
          },
        ),
      );
    } on DioError catch (e) {
      locator<NotifyStore>().showNotify(
        type: NotifyType.error,
        value: e.message,
      );
    }
  }

  Future<Response> httpGet({required String instagramName}) async {
    final result = await dio.get(AppConfig.baseUrl + instagramName+"/channel?__a=1");
    return result;
  }

  // Future<Response> httpPost(
  //     {required String url, required dynamic data}) async {
  //   final result = await dio.post(AppConfig.baseUrl + url, data: data);
  //   return result;
  // }
}
