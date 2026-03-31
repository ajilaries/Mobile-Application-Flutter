import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/theme_provider.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Dark Mode App")),
      body: Center(
        child: Switch(
          value: isDark,
          onChanged: (_) {
            ref.read(themeProvider.notifier).toggleTheme();
          },
        ),
      ),
    );
  }
}