// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:adf_album_da_copa/app/core/exceptions/repository_exception.dart';
import 'package:adf_album_da_copa/app/core/rest/custom_dio.dart';
import 'package:adf_album_da_copa/app/models/groups_stickers.dart';
import 'package:dio/dio.dart';

import './stickers_repository.dart';

class StickersRepositoryImpl implements StickersRepository {
  final CustomDio dio;

  StickersRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<GroupsStickers>> getMyAlbum() async {
    try {
      final result = await dio.auth().get('/api/countries');
      return result.data
          .map<GroupsStickers>((g) => GroupsStickers.fromMap(g))
          .toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar album do usuario', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar album do usuario');
    }
  }
}
