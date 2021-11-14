import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/welcome/view/welcome_view.dart';

mixin WelcomeRouter {

static final Handler welcomeHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> parameters,
    ) =>
        const WelcomeView(),
  );

}