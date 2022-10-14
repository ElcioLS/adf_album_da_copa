import 'package:adf_album_da_copa/app/models/register_sticker_model.dart';
import 'package:adf_album_da_copa/app/models/sticker_model.dart';

import './find_sticker_service.dart';
import '../../repository/stickers/stickers_repository.dart';

class FindStickerServiceImpl implements FindStickerService {
  final StickersRepository stickersRepository;

  FindStickerServiceImpl({required this.stickersRepository});

  @override
  Future<StickerModel> execute(String countryCode, String stickerNumber) async {
    var sticker =
        await stickersRepository.findStickerByCode(countryCode, stickerNumber);
    if (sticker == null) {
      final registerSticker = RegisterStickerModel(
        name: '',
        stickerCode: countryCode,
        stickerNumber: stickerNumber,
      );
      sticker = await stickersRepository.create(registerSticker);
    }
    return sticker;
  }
}
