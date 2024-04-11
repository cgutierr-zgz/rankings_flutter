import 'dart:io';
import 'dart:ui';

enum SupportedLocales {
  en('English', '🇬🇧'),
  es('Español', '🇪🇸'),
  ;

  const SupportedLocales(this.title, this.flag);

  final String title;
  final String flag;

  String get languageCode => name;
  Locale get locale => Locale(languageCode);

  static SupportedLocales getFromLocale(Locale? locale) {
    if (locale == null) {
      return _getDefaultLocale();
    } else {
      switch (locale.languageCode) {
        case 'en':
          return SupportedLocales.en;
        case 'es':
          return SupportedLocales.es;
        default:
          return SupportedLocales.en;
      }
    }
  }

  static SupportedLocales _getDefaultLocale() {
    final platformLocale = Platform.localeName;

    final parts = platformLocale.split('_');
    final locale = Locale(parts.first);

    switch (locale.languageCode) {
      case 'en':
        return SupportedLocales.en;
      case 'es':
        return SupportedLocales.es;
      default:
        return SupportedLocales.en;
    }
  }
}
