import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/todo/presenter/todo_presenter.dart';
import 'package:flutter_pro/modules/welcome/view/welcome_view.dart';
import 'package:flutter_pro/router/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    AppRouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoPresenter(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Pro',
        initialRoute: '/',
        onGenerateRoute: AppRouter.router.generator,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeView(),
      ),
    );
  }
}
