import 'package:adf_album_da_copa/app/core/mvp/album_presenter.dart';

abstract class SplashPresenter extends AlbumPresenter {
  Future<void> checkLogin();
}
