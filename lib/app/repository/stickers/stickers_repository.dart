import 'package:adf_album_da_copa/app/models/groups_stickers.dart';
import 'package:adf_album_da_copa/app/models/sticker_model.dart';

import '../../models/register_sticker_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
  Future<StickerModel?> findStickerByCode(
      String stickerCode, String stickerNumber);
  Future<StickerModel> create(RegisterStickerModel registerStickerModel);
}
