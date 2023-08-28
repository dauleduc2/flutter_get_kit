import 'package:dio/dio.dart';
import 'package:fss_mobile/app/data/modals/user/user.dart';
import 'package:retrofit/retrofit.dart';

part 'user.api.g.dart';

@RestApi()
abstract class UserApi {
  factory UserApi(Dio dio) = _UserApi;

  @GET('/user/me')
  Future<HttpResponse<User>> getCurrentUser();
}
