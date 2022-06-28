import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:local_620/pages/home_page.dart';
import 'package:local_620/pages/second_page.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ru', 'RU'),Locale('uz', 'UZ'),Locale('fr', 'FR'),Locale('ja', 'JA'),Locale('ko', 'KO')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const SecondPage(),
      routes: {
        SecondPage.id:(context)=>const SecondPage(),
        HomePage.id:(context)=>const HomePage()
      },
    );
  }
}
