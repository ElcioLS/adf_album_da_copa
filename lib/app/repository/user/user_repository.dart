import 'package:adf_album_da_copa/app/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}
