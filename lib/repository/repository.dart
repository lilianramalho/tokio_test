import 'package:tokio_test/data/provider/user_data.dart';

class Repository {
  final UserData _userData = UserData();

  Future<Map<String, dynamic>> getUserInfo() async{
    Map<String, dynamic> mapUserInfo = await _userData.getUserInfo();
    print(mapUserInfo);
    return mapUserInfo;
  }
}