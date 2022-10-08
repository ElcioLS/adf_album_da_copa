import 'package:adf_album_da_copa/app/core/mvp/album_presenter.dart';
import 'package:adf_album_da_copa/app/pages/auth/register/view/register_view.dart';

abstract class RegisterPresenter extends AlbumPresenter<RegisterView> {
  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });
}
