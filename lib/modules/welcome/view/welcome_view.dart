import 'package:flutter/material.dart';
import 'package:flutter_pro/services/http_service.dart';
import 'package:logger/logger.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  _loadData() async {
    HttpService service = HttpService();

    Map res = await service.get(url: '/todos/1');

    Logger logger = Logger();
    logger.d(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VIPER Todo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Buscar dados'),
          // onPressed: () => Navigator.pushNamed(context, '/todo'),
          onPressed: _loadData,
        ),
      ),
    );
  }
}
