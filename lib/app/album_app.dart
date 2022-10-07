import 'package:adf_album_da_copa/app/core/ui/theme/theme_config.dart';
import 'package:adf_album_da_copa/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AlbumApp extends StatelessWidget {
  const AlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Album de Figurinhas da Copa do Katar 2022',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => const SplashPage(),
      },
    );
  }
}
