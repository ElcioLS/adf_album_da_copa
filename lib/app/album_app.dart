import 'package:adf_album_da_copa/app/core/ui/theme/theme_config.dart';
import 'package:adf_album_da_copa/app/pages/auth/login/login_page.dart';
import 'package:adf_album_da_copa/app/pages/home/home_page.dart';
import 'package:adf_album_da_copa/app/pages/splash/splash_route.dart';
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
        '/': (_) => SplashRoute(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
