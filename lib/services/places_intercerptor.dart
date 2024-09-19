import 'package:dio/dio.dart';


class PlacesInterceptor extends Interceptor {
  
  final accessToken = 'pk.eyJ1IjoidGVyaXNjbyIsImEiOiJja2o4cWUzcWcxaTFyMzFueTd6Zmkwb3h3In0.c-0_CDzMCFORmIvgzwf7qAA';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    
    options.queryParameters.addAll({
      'access_token': accessToken,
      'language': 'es',
    });

    super.onRequest(options, handler);
  }

}
