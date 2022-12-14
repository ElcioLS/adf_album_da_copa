import 'package:adf_album_da_copa/app/pages/splash/presenter/splash_presenter.dart';
import 'package:adf_album_da_copa/app/pages/splash/presenter/splash_presenter_impl.dart';
import 'package:adf_album_da_copa/app/pages/splash/splash_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';

class SplashRoute extends FlutterGetItPageRoute {
  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton<SplashPresenter>((i) => SplashPresenterImpl())];

  @override
  WidgetBuilder get page => (context) => SplashPage(presenter: context.get());
}
