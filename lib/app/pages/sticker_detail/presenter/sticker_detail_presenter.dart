import 'package:adf_album_da_copa/app/core/mvp/album_presenter.dart';
import 'package:adf_album_da_copa/app/models/user_sticker_model.dart';
import 'package:adf_album_da_copa/app/pages/sticker_detail/view/sticker_detail_view.dart';

abstract class StickerDetailPresenter
    extends AlbumPresenter<StickerDetailView> {
  Future<void> load({
    required String countryCode,
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  });
}
