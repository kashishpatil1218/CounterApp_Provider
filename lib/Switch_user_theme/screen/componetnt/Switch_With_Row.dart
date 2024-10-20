import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/themeProvider.dart';

Padding Text_Row_WithSwitch(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 14),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Provider.of<ThemeProviderSwitch>(context, listen: true)
                .getThemeMode()
                ? Icons.nightlight_round_outlined
                : Icons.sunny,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(
            width: 26,
          ),
          Text(
            Provider.of<ThemeProviderSwitch>(context, listen: false)
                .getThemeMode()
                ? 'Dark Mode'
                : 'Light Mode',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),

          Spacer(),
          Switch(
            inactiveThumbColor: Theme.of(context).colorScheme.primary,
            inactiveTrackColor: Colors.grey,
            trackOutlineColor:  const WidgetStatePropertyAll(Colors.grey),
            activeColor: Theme.of(context).colorScheme.primary.withOpacity(0.8),
            thumbColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),
            value: Provider.of<ThemeProviderSwitch>(context,listen: false).getThemeMode(),
            onChanged: (value) {
              Provider.of<ThemeProviderSwitch>(context,listen: false).toggleThemePreference(value);
            },


          )
        ],
      ),
    ),
  );
}