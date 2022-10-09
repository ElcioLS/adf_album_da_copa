import 'package:adf_album_da_copa/app/core/ui/helpers/loader.dart';
import 'package:adf_album_da_copa/app/core/ui/helpers/messages.dart';
import 'package:adf_album_da_copa/app/models/user_model.dart';
import 'package:adf_album_da_copa/app/pages/home/home_page.dart';
import 'package:flutter/widgets.dart';

import './home_view.dart';

abstract class HomeViewImpl extends State<HomePage>
    with Loader<HomePage>, Messages<HomePage>
    implements HomeView {
  UserModel? user;

  @override
  void initState() {
    widget.presenter.view = this;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.presenter.getUserData();
    });
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void logoutSuccess() {
    hideLoader();
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }

  @override
  void updateUser(UserModel user) {
    hideLoader();
    setState(() {
      this.user = user;
    });
  }
}
