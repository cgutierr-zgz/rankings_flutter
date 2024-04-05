import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rankings_flutter/common/gen/l10n/l10n.dart';
import 'package:rankings_flutter/common/themes/app_theme.dart';
import 'package:rankings_flutter/data/models/settings.dart';
import 'package:rankings_flutter/view/cubit/settings_cubit.dart';
import 'package:rankings_flutter/view/screens/chat_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, Settings>(
      builder: (context, state) {
        return _AppView(settings: state);
      },
    );
  }
}

class _AppView extends StatelessWidget {
  const _AppView({required this.settings});

  final Settings settings;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: settings.themeMode,
      // locale: settings.locale,
      home: const ChatScreen(),
      supportedLocales: L10n.delegate.supportedLocales,
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
