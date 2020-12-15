import 'package:baby_namer/modules/screens/invite_page.dart';
import 'package:baby_namer/modules/screens/narrow_page.dart';
import 'package:baby_namer/modules/screens/onboarding_page.dart';
import 'package:baby_namer/modules/screens/options_page.dart';
import 'package:baby_namer/modules/screens/setup_page.dart';
import 'package:baby_namer/modules/screens/swipe_page.dart';
import 'package:flutter/material.dart';

const String kOnboardingRoute = '/';
const String kSetupRoute = '/setup';
const String kInviteRoute = '/invite';
const String kOptionsRoute = '/options';
const String kSwipeRoute = '/swipe';
const String kNarrowRoute = '/narrow';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    //final args = settings.arguments;

    switch (settings.name) {
      case kOnboardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingPage());
      case kSetupRoute:
        return MaterialPageRoute(builder: (_) => SetupPage());
      case kInviteRoute:
        return MaterialPageRoute(builder: (_) => InvitePage());
      case kOptionsRoute:
        return MaterialPageRoute(builder: (_) => OptionsPage());
      case kSwipeRoute:
        return MaterialPageRoute(builder: (_) => SwipePage());
      case kNarrowRoute:
        return MaterialPageRoute(builder: (_) => NarrowPage());
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
