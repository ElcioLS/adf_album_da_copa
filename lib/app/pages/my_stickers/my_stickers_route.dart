import 'package:adf_album_da_copa/app/pages/my_stickers/my_stickers_page.dart';
import 'package:adf_album_da_copa/app/pages/my_stickers/presenter/my_stickers_presenter.dart';
import 'package:adf_album_da_copa/app/pages/my_stickers/presenter/my_stickers_presenter_impl.dart';
import 'package:adf_album_da_copa/app/repository/stickers/stickers_repository.dart';
import 'package:adf_album_da_copa/app/repository/stickers/stickers_repository_impl.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';

class MyStickersRoute extends FlutterGetItPageRoute {
  const MyStickersRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<StickersRepository>(
            (i) => StickersRepositoryImpl(dio: i())),
        Bind.lazySingleton<MyStickersPresenter>(
            (i) => MyStickersPresenterImpl(stickersRepository: i())),
      ];

  @override
  WidgetBuilder get page =>
      (context) => MyStickersPage(presenter: context.get());
}
