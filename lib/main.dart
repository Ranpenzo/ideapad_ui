import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ideapad_ui/pages/login.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:ideapad_ui/theme_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {   
    return ChangeNotifierProvider(
      create: (context) => ThemeService(),
      builder: (context, _) {    
        final themeService = Provider.of<ThemeService>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: FlexThemeData.light(
            scheme: FlexScheme.purpleM3,
            surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
            blendLevel: 7,
            subThemesData: const FlexSubThemesData(
              blendOnLevel: 10,
              blendOnColors: false,
              useTextTheme: true,
              useM2StyleDividerInM3: true,
              alignedDropdown: true,
              useInputDecoratorThemeInDialogs: true,
            ),
            visualDensity: FlexColorScheme.comfortablePlatformDensity,
            useMaterial3: true,
            swapLegacyOnMaterial3: true,
            fontFamily: GoogleFonts.notoSans().fontFamily,
          ),
          darkTheme: FlexThemeData.dark(
            scheme: FlexScheme.purpleM3,
            surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
            blendLevel: 13,
            subThemesData: const FlexSubThemesData(
              blendOnLevel: 20,
              useTextTheme: true,
              useM2StyleDividerInM3: true,
              alignedDropdown: true,
              useInputDecoratorThemeInDialogs: true,
            ),
            visualDensity: FlexColorScheme.comfortablePlatformDensity,
            useMaterial3: true,
            swapLegacyOnMaterial3: true,
            fontFamily: GoogleFonts.notoSans().fontFamily,
          ),
          themeMode: themeService.themeMode,
          home: const Scaffold(body: LogInPage()),
        );
      },
    );
  }
}
