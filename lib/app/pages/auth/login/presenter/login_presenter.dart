import 'package:adf_album_da_copa/app/core/mvp/album_presenter.dart';
import 'package:adf_album_da_copa/app/pages/auth/login/view/login_view.dart';

abstract class LoginPresenter extends AlbumPresenter<LoginView> {
  Future<void> login(String email, String password);
}
