import 'package:adf_album_da_copa/app/core/ui/helpers/loader.dart';
import 'package:adf_album_da_copa/app/core/ui/helpers/messages.dart';
import 'package:adf_album_da_copa/app/pages/auth/register/register_page.dart';
import 'package:flutter/widgets.dart';

import './register_view.dart';

abstract class RegisterViewImpl extends State<RegisterPage>
    with Messages<RegisterPage>, Loader<RegisterPage>
    implements RegisterView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void registerError([String? message]) {
    hideLoader();
    showError(message ?? 'Erro ao registrar usuário ');
  }

  @override
  void registerSuccess() {
    hideLoader();
    showSuccess('Usuário cadastrado com sucesso');
    Navigator.of(context).pop();
  }
}
