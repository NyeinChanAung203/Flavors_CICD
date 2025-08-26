abstract class EnvConfig {
  //* Modifier must be "const" because fromEnvironment is compile-time constant

  static const baseURL = String.fromEnvironment('BASE_URL');
  static const appName = String.fromEnvironment('APP_NAME');
  static const version = int.fromEnvironment('VERSION');
}
