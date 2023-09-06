import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hilol/application/core/theme/theme.dart';
import 'package:hilol/presentation/ui/pages/splashPage.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      saveLocale: true,
      startLocale: const Locale("uz"),
      supportedLocales: const [Locale("uz"), Locale("ru")],
      path: "lib/application/core/lang",
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: HilolTestTheme.lightMode,
      dark: HilolTestTheme.darkMode,
      initial: AdaptiveThemeMode.system,
      builder: (theme, dark) => ScreenUtilInit(
          designSize: kIsWeb ? const Size(1440, 1024) : const Size(412, 892),
          builder: (context, child) => MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.system,
              theme: theme,
              darkTheme: dark,
              home: const SplashPage(),
              title: 'Hilol Test')),
    );
  }
}
