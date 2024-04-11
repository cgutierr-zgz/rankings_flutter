import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankings_flutter/common/gen/l10n/l10n.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';
import 'package:rankings_flutter/data/models/settings.dart';
import 'package:rankings_flutter/data/models/supported_locales.dart';
import 'package:rankings_flutter/data/services/open_ai_service.dart';
import 'package:rankings_flutter/view/bloc/chat/chat_bloc.dart';
import 'package:rankings_flutter/view/cubit/settings_cubit.dart';
import 'package:rankings_flutter/view/screens/widgets/animated_disabled_button.dart';

class SettingsDrawer extends StatelessWidget {
  const SettingsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.85,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: BlocBuilder<SettingsCubit, Settings>(
            builder: (context, settingsState) {
              return BlocBuilder<ChatBloc, ChatState>(
                builder: (context, chatState) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _TitleSection(
                          text: l10n.settings,
                          leading: Text(
                            '⚙️',
                            style: context.textTheme.displayMedium,
                          ),
                        ),
                        const SizedBox(height: 30),
                        _DrawerSection(
                          text: l10n.locales,
                          icon: Icons.translate,
                          trailing: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: context.theme.scaffoldBackgroundColor
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<SupportedLocales>(
                                isDense: true,
                                padding: EdgeInsets.zero,
                                icon: const SizedBox.shrink(),
                                borderRadius: BorderRadius.circular(5),
                                value: SupportedLocales.getFromLocale(
                                  settingsState.locale,
                                ),
                                onChanged: (value) {
                                  if (value == null) return;
                                  context
                                      .read<SettingsCubit>()
                                      .changeLocale(value.locale);
                                },
                                items: SupportedLocales.values
                                    .map(
                                      (e) => DropdownMenuItem<SupportedLocales>(
                                        value: e,
                                        child: Text('${e.flag} ${e.title}'),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _DrawerSection(
                          text: l10n.themeMode,
                          icon: Icons.palette_outlined,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: context.theme.hintColor.withOpacity(0.05),
                            borderRadius:
                                const BorderRadiusDirectional.vertical(
                              bottom: Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: ThemeMode.values.map((e) {
                              final isSelected = e == settingsState.themeMode;

                              return Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isSelected
                                      ? context.theme.colorScheme.primary
                                          .withOpacity(0.1)
                                      : null,
                                ),
                                child: IconButton(
                                  icon: Icon(e.icon),
                                  onPressed: () => context
                                      .read<SettingsCubit>()
                                      .changeTheme(e),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Theme(
                          data: context.theme
                              .copyWith(splashColor: Colors.transparent),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            shape: const Border(),
                            title: _DrawerSection(
                              text: l10n.gptSettings,
                              icon: Icons.smart_toy_outlined,
                            ),
                            children: [
                              Row(
                                children: [
                                  const Text('Images to generate'),
                                  IconButton(
                                    onPressed: () => context
                                        .read<SettingsCubit>()
                                        .decreaseImageQty(),
                                    icon: const Icon(Icons.remove),
                                  ),
                                  Text('${settingsState.imagesAmmount}'),
                                  IconButton(
                                    onPressed: () => context
                                        .read<SettingsCubit>()
                                        .incremenetImageQty(),
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                              DropdownButton<GPTCompletionModels>(
                                value: settingsState.chatModel,
                                onChanged: (value) {
                                  if (value == null) return;
                                  context
                                      .read<SettingsCubit>()
                                      .changeChatModel(value);
                                },
                                items: GPTCompletionModels.values
                                    .map(
                                      (e) =>
                                          DropdownMenuItem<GPTCompletionModels>(
                                        value: e,
                                        child: Text(e.key),
                                      ),
                                    )
                                    .toList(),
                              ),
                              DropdownButton<GPTImageGenerationModels>(
                                value: settingsState.imageModel,
                                onChanged: (value) {
                                  if (value == null) return;
                                  context
                                      .read<SettingsCubit>()
                                      .changeImageModel(value);
                                },
                                items: GPTImageGenerationModels.values
                                    .map(
                                      (e) => DropdownMenuItem<
                                          GPTImageGenerationModels>(
                                        value: e,
                                        child: Text(e.key),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        if (chatState.conversations.isNotEmpty) ...[
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                l10n.conversations,
                                style: context.textTheme.headlineMedium,
                              ),
                              const Spacer(),
                              if (chatState.selectedConversation?.messages
                                      .isNotEmpty ??
                                  false)
                                AnimatedDisableButton(
                                  isActive: chatState.selectedConversation
                                          ?.messages.isNotEmpty ??
                                      false,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: context.theme.dividerColor
                                          .withOpacity(0.25),
                                    ),
                                    child: IconButton(
                                      onPressed: () => context
                                        ..read<ChatBloc>().add(
                                          const ChatEvent.newChat(),
                                        )
                                        ..pop(),
                                      icon: Icon(
                                        Icons.add,
                                        size: 30,
                                        color:
                                            context.theme.colorScheme.primary,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          ...chatState.conversations.map((e) {
                            return ListTile(
                              tileColor: context.theme.cardColor,
                              key: Key(e.id),
                              title: Text(
                                e.messages.first.content,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () => context.read<ChatBloc>().add(
                                      ChatEvent.deleteChat(e.id),
                                    ),
                              ),
                              onTap: () => context
                                ..read<ChatBloc>().add(
                                  ChatEvent.selectChat(e.id),
                                )
                                ..pop(),
                            );
                          }),
                          const SizedBox(height: 10),
                          Center(
                            child: AnimatedDisableButton(
                              isActive: chatState.conversations.isNotEmpty,
                              child: FilledButton.tonalIcon(
                                style: FilledButton.styleFrom(
                                  backgroundColor:
                                      context.theme.colorScheme.error,
                                  foregroundColor:
                                      context.theme.colorScheme.onError,
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                icon: const Icon(Icons.delete),
                                onPressed: () => context.read<ChatBloc>().add(
                                      const ChatEvent.deleteHistory(),
                                    ),
                                label: Text(l10n.deleteHistory),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection({
    required this.leading,
    required this.text,
  });

  final Widget? leading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (leading != null) leading!,
        const SizedBox(width: 10),
        Text(text, style: context.textTheme.displayMedium),
      ],
    );
  }
}

class _DrawerSection extends StatelessWidget {
  const _DrawerSection({
    required this.text,
    required this.icon,
    this.trailing,
  });

  final String text;
  final IconData icon;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: context.theme.hintColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: context.theme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: context.theme.colorScheme.primary,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: context.theme.textTheme.bodyLarge?.color,
            ),
          ),
          if (trailing != null) ...[const Spacer(), trailing!],
        ],
      ),
    );
  }
}
