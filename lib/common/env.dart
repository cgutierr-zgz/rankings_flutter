class Env {
  factory Env() => _instance ??= Env._();

  Env._();

  static Env? _instance;

  late final String openAIApiKey;
}
