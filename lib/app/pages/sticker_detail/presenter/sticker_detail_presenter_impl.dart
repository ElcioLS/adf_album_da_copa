// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:adf_album_da_copa/app/models/user_sticker_model.dart';
import 'package:adf_album_da_copa/app/pages/sticker_detail/view/sticker_detail_view.dart';
import 'package:adf_album_da_copa/app/services/sticker/find_sticker_service.dart';

import './sticker_detail_presenter.dart';
import '../../../models/sticker_model.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {
  late final StickerDetailView _view;
  final FindStickerService findStickerService;
  StickerModel? sticker;
  UserStickerModel? stickerUser;
  int amount = 0;

  StickerDetailPresenterImpl({
    required this.findStickerService,
  });

  @override
  set view(StickerDetailView view) => _view = view;

  @override
  Future<void> load({
    required String countryCode,
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  }) async {
    this.stickerUser = stickerUser;
    if (stickerUser == null) {
      sticker = await findStickerService.execute(countryCode, stickerNumber);
    }
    bool hasSticker = stickerUser != null;

    if (hasSticker) {
      amount = stickerUser.duplicate + 1;
    }

    _view.screenLoaded(
      hasSticker,
      countryCode,
      stickerNumber,
      countryName,
      amount,
    );
  }
}
