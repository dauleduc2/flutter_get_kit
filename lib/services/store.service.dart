import 'package:fss_mobile/constants/store.constant.dart';
import 'package:nb_utils/nb_utils.dart';

class LocalStoreService {
  static String get accessToken =>
      getStringAsync(LocalStoreConstant.accessToken);

  static set accessToken(String value) =>
      setValue(LocalStoreConstant.accessToken, value);
}
