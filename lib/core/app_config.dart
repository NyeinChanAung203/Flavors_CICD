enum Environment { dev, staging, prod }

class AppConfig {
  final Environment env;
  final String baseUrl;
  final int version;
  final String appName;

  const AppConfig._({
    required this.appName,
    required this.baseUrl,
    required this.env,
    required this.version,
  });

  static AppConfig? _instance;

  factory AppConfig({
    required String appName,
    required String baseUrl,
    required Environment env,
    required int version,
  }) {
    _instance ??= AppConfig._(
      appName: appName,
      baseUrl: baseUrl,
      env: env,
      version: version,
    );
    return _instance!;
  }

  static AppConfig get instance {
    if (_instance == null) {
      throw Exception('Not initialized');
    }
    return _instance!;
  }

  static bool get isDev => instance.env == Environment.dev;
  static bool get isStaging => instance.env == Environment.staging;
  static bool get isProd => instance.env == Environment.prod;
}
