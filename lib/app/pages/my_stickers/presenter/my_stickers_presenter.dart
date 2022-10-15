import 'package:adf_album_da_copa/app/core/mvp/album_presenter.dart';
import 'package:adf_album_da_copa/app/pages/my_stickers/view/my_stickers_view.dart';

abstract class MyStickersPresenter extends AlbumPresenter<MyStickersView> {
  Future<void> getMyAlbum();
  Future<void> statusFilter(String status);
  void countryFilter(List<String>? countries);

  void refresh();
}
