import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fss_mobile/config/injection.dart';
import 'package:fss_mobile/providers/auth.provider.dart';
import 'package:fss_mobile/services/logger.service.dart';
import 'package:fss_mobile/widgets/auto_login/app.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

Future<void> main() async {
  return runZonedGuarded(() async {
    ///Init restful services
    WidgetsFlutterBinding.ensureInitialized();
    await initialize();
    await configureDependencies();

    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    runApp(const MyApp());
  }, (error, stack) {
    print(stack);
    print(error);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
