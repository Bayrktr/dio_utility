import '../../constants/settings.dart';
import 'dio_endpoints.dart';

enum DioEnums {
  LOGIN,
  SIGNUP,
  CATEGORY,
  SUBCATEGORY,
  ANDROID,
  IOS,
  CONTROL,
  STARTVERIFY,
  ENDVERIFY,
  UNITES,
  UNITESLESSON,
  LESSONTYPE,
  HOMEPAGE,
  PLAYLIST,
  PLAYLISTCONTENT,
  ADDPLAYLIST,
  DELETEPLAYLIST,
  DELETECONTENTPLAYLIST,
  EDITUSERDETAIL,
  GETUSERDETAIL,
}

extension DioEnumsExtention on DioEnums {
  String get _rawValue {
    switch (this) {
      case DioEnums.LOGIN:
        return DioEndpoints.login;
      case DioEnums.SIGNUP:
        return DioEndpoints.signup;
      case DioEnums.CATEGORY:
        return DioEndpoints.category;
      case DioEnums.ANDROID:
        return DioEndpoints.android;
      case DioEnums.IOS:
        return DioEndpoints.ios;
      case DioEnums.CONTROL:
        return DioEndpoints.control;
      case DioEnums.SUBCATEGORY:
        return DioEndpoints.subCategory;
      case DioEnums.STARTVERIFY:
        return DioEndpoints.start_verify;
      case DioEnums.ENDVERIFY:
        return DioEndpoints.end_verify;
      case DioEnums.UNITES:
        return DioEndpoints.unites;
      case DioEnums.UNITESLESSON:
        return DioEndpoints.unites_lesson;
      case DioEnums.LESSONTYPE:
        return DioEndpoints.lesson_type;
      case DioEnums.HOMEPAGE:
        return DioEndpoints.home_page;
      case DioEnums.PLAYLIST:
        return DioEndpoints.playlist;
      case DioEnums.ADDPLAYLIST:
        return DioEndpoints.addPlaylist;
      case DioEnums.EDITUSERDETAIL:
        return DioEndpoints.editUserDetail;
      case DioEnums.GETUSERDETAIL:
        return DioEndpoints.userDetail;
      case DioEnums.DELETEPLAYLIST:
        return DioEndpoints.deletePlaylist;
      case DioEnums.PLAYLISTCONTENT:
        return DioEndpoints.playlistContent;
      case DioEnums.DELETECONTENTPLAYLIST:
        return DioEndpoints.deleteContentPlaylist;

    }
  }

  String get getPath {
    return '${Settings.baseUrl}$_rawValue';
  }
}
