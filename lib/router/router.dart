import 'package:fluro/fluro.dart';
import 'package:flutter_pro/modules/todo/routes/todo_routes.dart';
import 'package:flutter_pro/modules/welcome/routes/welcome_router.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define(
      '/',
      handler: WelcomeRouter.welcomeHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define('/todo', handler: TodoRouter.todoHandler);

    router.define(
      '/todo/:id',
      handler: TodoRouter.todoDetailHandler,
      transitionType: TransitionType.fadeIn,
    );
  }
}
