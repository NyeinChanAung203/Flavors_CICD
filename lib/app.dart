import 'package:flutter/material.dart';

import 'core/app_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final config = AppConfig.instance;
    return MaterialApp(
      title: config.appName,
      debugShowCheckedModeBanner: config.env != Environment.prod,
      home: Scaffold(
        appBar: AppBar(title: Text("Env: ${config.env.name.toUpperCase()}")),
        body: Center(
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("API_BASE_URL: ${config.baseUrl}"),
              Text("Version: ${config.version}"),
            ],
          ),
        ),
      ),
    );
  }
}
