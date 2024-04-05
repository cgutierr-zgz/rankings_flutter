import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankings_flutter/common/gen/l10n/l10n.dart';
import 'package:rankings_flutter/common/utils/extensions.dart';
import 'package:rankings_flutter/data/models/settings.dart';
import 'package:rankings_flutter/view/cubit/settings_cubit.dart';

class SettingsDrawer extends StatelessWidget {
  const SettingsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.settings,
                style: context.textTheme.displayMedium,
              ),
              /*
              Text(
                l10n.locales,
                style: context.textTheme.titleLarge,
              ),
              */
              Text(
                l10n.themeMode,
                style: context.textTheme.titleLarge,
              ),
              BlocBuilder<SettingsCubit, Settings>(
                builder: (context, state) {
                  return Row(
                    children: ThemeMode.values.map((e) {
                      final isSelected = e == state.themeMode;

                      return TextButton(
                        child: Text(
                          e.name.toUpperCase(),
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: isSelected ? Colors.green : null,
                          ),
                        ),
                        onPressed: () =>
                            context.read<SettingsCubit>().changeTheme(e),
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
