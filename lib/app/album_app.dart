import 'package:adf_album_da_copa/app/core/rest/custom_dio.dart';
import 'package:adf_album_da_copa/app/core/ui/theme/theme_config.dart';
import 'package:adf_album_da_copa/app/pages/auth/login/login_page.dart';
import 'package:adf_album_da_copa/app/pages/auth/register/register_route.dart';
import 'package:adf_album_da_copa/app/pages/home/home_page.dart';
import 'package:adf_album_da_copa/app/pages/splash/splash_route.dart';
import 'package:adf_album_da_copa/app/repository/auth/auth_repository.dart';
import 'package:adf_album_da_copa/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AlbumApp extends StatelessWidget {
  const AlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
      ],
      child: MaterialApp(
        title: 'Album de Figurinhas da Copa do Catar 2022',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => SplashRoute(),
          '/auth/login': (_) => const LoginPage(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
