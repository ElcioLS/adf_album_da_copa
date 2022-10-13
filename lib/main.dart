// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:adf_album_da_copa/app/album_app.dart';
import 'package:adf_album_da_copa/app/core/config/env/env.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(AlbumApp());
}
