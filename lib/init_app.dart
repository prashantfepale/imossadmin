import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'shared/routes/app_pages.dart';
import 'shared/routes/app_routes.dart';
import 'shared/style/app_style.dart';

class InitApp extends StatelessWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: GetMaterialApp(
        color: Colors.white,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
              foregroundColor: AppColors.white,
              // backgroundColor: AppColors.primary1,
              // shape: const CircleBorder(),
            ),
          ),
          appBarTheme: const AppBarTheme(
            color: AppColors.primary2,
            titleTextStyle: TextStyle(color: AppColors.white, fontSize: 15.0),
            elevation: 0,
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary1,
          ),
          useMaterial3: true,
        ),
        initialRoute: AppRoutes.Notifications,
        getPages: AppPages.routes,
      ),
    );
  }
}
