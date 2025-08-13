import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:meal_app/App/modules/sharedwidgets/network_error_view.dart';

class AppProvider extends GetConnect {
  final RxBool _networkUnavailable = false.obs;
  final RxBool _isDialogOpen = false.obs;

  @override
  Future<void> onInit() async {
    httpClient.maxAuthRetries = 1;
    httpClient.defaultContentType = 'application/json';
    httpClient.followRedirects = true;
    httpClient.timeout = Duration(seconds: 60);

    httpClient.addRequestModifier((Request request) async {
      return await updateHeaders(request);
    });

    ever(_networkUnavailable, _networkStatusChanged);
  }

  Future<Request<dynamic>> updateHeaders(Request<dynamic> request) async {
    
    request.headers['Accept'] = 'application/json';
    request.headers['Content-Type'] = 'application/json';
    return request;
  }

  void _networkStatusChanged(bool isUnavailable) {
    if (isUnavailable) {
      if (!_isDialogOpen.value) {
        _isDialogOpen.value = true;
        Get.dialog(
          const NetworkErrorView(),
          barrierDismissible: false,
          useSafeArea: true,
          barrierColor: null,
        );
      }
    } else {
      if (_isDialogOpen.value) {
        _isDialogOpen.value = false;
        if (Get.isDialogOpen ?? false) {
          Get.back();
        }
      }
    }
  }

  Future<Response<T>> handleNetworkError<T>(
    Future<Response<T>> responseFuture,
  ) async {
    try {
      final response = await responseFuture;
      _networkUnavailable.value = false;
      return response;
    } catch (e) {
      if (e is SocketException || e is TimeoutException) {
        _networkUnavailable.value = true;
      } else {
        _networkUnavailable.value = false;
      }
      rethrow;
    }
  }
}
