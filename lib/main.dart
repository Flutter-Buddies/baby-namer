import 'package:flutter/material.dart';
import 'config/routes/routes.dart';
// import 'modules/screens/onboarding_page.dart';
// import 'modules/screens/setup_page.dart';
// import 'modules/screens/invite_page.dart';
// import 'modules/screens/options_page.dart';
// import 'modules/screens/swipe_page.dart';
// import 'modules/screens/narrow_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Namer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      // routes: {
      //   '/': (context) => OnboardingPage(),
      //   '/setup': (context) => SetupPage(),
      //   '/invite': (context) => InvitePage(),
      //   '/options': (context) => OptionsPage(),
      //   '/swipe': (context) => SwipePage(),
      //   '/narrow': (context) => NarrowPage(),
      // },
    );
  }
}
