import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rankings_flutter/app.dart';
import 'package:rankings_flutter/common/constants.dart';
import 'package:rankings_flutter/common/env.dart';
import 'package:rankings_flutter/data/repositories/chat_interface.dart';
import 'package:rankings_flutter/data/repositories/open_ai_chat_repository.dart';
import 'package:rankings_flutter/data/services/open_ai_service.dart';
import 'package:rankings_flutter/view/bloc/app_bloc_observer.dart';
import 'package:rankings_flutter/view/bloc/chat/chat_bloc.dart';
import 'package:rankings_flutter/view/cubit/settings_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  Env().openAIApiKey = const String.fromEnvironment(Constants.OPEN_AI_API_KEY);

  Bloc.observer = AppBlocObserver();

  final localStorage = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: localStorage,
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ChatRepositoryI>(
          create: (_) => OpenAIChatRepository(openAIService: OpenAIService()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => SettingsCubit()),
          BlocProvider(
            create: (context) => ChatBloc(chatRepository: context.read()),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
