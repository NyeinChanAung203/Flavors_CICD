import 'package:flavor_cicd/app.dart';
import 'package:flavor_cicd/core/app_config.dart';
import 'package:flavor_cicd/core/env_config.dart';
import 'package:flutter/material.dart';

void main() {
  AppConfig(
    env: Environment.prod,
    baseUrl: EnvConfig.baseURL,
    version: EnvConfig.version,
    appName: EnvConfig.appName,
  );
  runApp(MyApp());
}
