import 'package:flutter/cupertino.dart';
import 'package:mobile_application_development/Projects/music_ui/main.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => UserProvider(), child: const MyApp()),
  );
}
