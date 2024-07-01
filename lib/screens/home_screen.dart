import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_adaptive_ui/utils/screen_util_breakpoints.dart';

import 'home_screen_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context){
        ScreenUtilBreakPoints.initMobileDesignSize(context);
        return const HomeScreenApp(cardSize: 450,crossAxisCount: 2);
      },
      tablet: (context){
        ScreenUtilBreakPoints.initTabletDesignSize(context);
        return const HomeScreenApp(cardSize: 450,crossAxisCount: 3);
      },
      desktop: (context){
        ScreenUtilBreakPoints.initWebDesignSize(context);
        return const HomeScreenApp(cardSize: 450,crossAxisCount: 4);
      },
    );
  }
}
