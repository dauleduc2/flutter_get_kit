import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth.api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST('/auth/oAuth')
  @FormUrlEncoded()
  Future<HttpResponse<String>> signIn(
    @Field('accessToken') String? accessToken,
    @Field('deviceId') String deviceId,
  );

  @POST('/auth/logout')
  Future<void> signOut();
}
