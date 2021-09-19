import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podcast_app/app/theme/app_theme.dart';
import 'package:podcast_app/config/routes/routes.dart';

void main() {
  runApp(ProviderScope(child: Poddle()));
}

class Poddle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poddle',
      theme: theme,
      onGenerateRoute: generateRoutes,
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
    );
  }
}
