import 'package:flutter/material.dart';
import 'package:yum_quick/core/router/router_config.dart';
import 'package:yum_quick/core/theme/theme_data.dart';
import 'package:yum_quick/injection_container.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Yum Quick',
      theme: myThemeData,
      routerConfig: router,
    );
  }
}