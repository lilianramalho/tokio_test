import 'package:get/get.dart';
import 'package:tokio_test/model/user/user_model.dart';
import 'package:tokio_test/repository/repository.dart';

class UserController extends GetxController {
  final Repository _repository = Repository();
  UserModel? userModel;
  RxBool isLoarding = false.obs;

  getUserInfo() async{
    isLoarding.value = true;
    final result = await _repository.getUserInfo();
    userModel = UserModel.fromJson(result);
    print(userModel!.name.toString());
    isLoarding.value = false;
  }
}