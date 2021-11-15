import 'package:flutter/material.dart';
import 'package:flutter_pro/router/router.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VIPER Todo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Abrir TODO'),
          onPressed: () => AppRouter.router.navigateTo(context, '/todo'),
        ),
      ),
    );
  }
}
