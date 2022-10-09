import 'package:adf_album_da_copa/app/core/mvp/album_presenter.dart';
import 'package:adf_album_da_copa/app/pages/home/view/home_view.dart';

abstract class HomePresenter extends AlbumPresenter<HomeView> {
  Future<void> getUserData();
  Future<void> logout();
}
