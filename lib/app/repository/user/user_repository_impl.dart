// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:adf_album_da_copa/app/core/exceptions/repository_exception.dart';
import 'package:adf_album_da_copa/app/core/rest/custom_dio.dart';
import 'package:adf_album_da_copa/app/models/user_model.dart';
import 'package:dio/dio.dart';

import './user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final CustomDio dio;

  UserRepositoryImpl({
    required this.dio,
  });

  @override
  Future<UserModel> getMe() async {
    try {
      final result = await dio.auth().get('/api/me');
      return UserModel.fromMap(result.data);
    } on DioError catch (e, s) {
      log('Erro ao buscar dados do usuario logado', error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao buscar dados do usuario logado');
    }
  }
}
