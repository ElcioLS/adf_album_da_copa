import 'package:adf_album_da_copa/app/models/user_model.dart';

abstract class HomeView {
  void updateUser(UserModel user);
  void error(String message);
  void showLoader();
  void logoutSuccess();
}
