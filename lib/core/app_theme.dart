import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // Brand palette (NEW)
  static const Color primaryLight = Color(0xFF00E676);
  static const Color primaryDark = Color(0xFF00C853);
  static const Color accentLight = Color(0xFFFFC107);
  static const Color accentDark = Color(0xFFFFA000);

  // Surfaces
  static const Color backgroundLight = Color(0xFFF5F7FA);
  static const Color backgroundDark = Color(0xFF0A0F14);
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF121A22);
  static const Color cardLight = Color(0xFFEAF0F6);
  static const Color cardDark = Color(0xFF1B2630);

  // Text
  static const Color textPrimaryLight = Color(0xFF0B1F33);
  static const Color textPrimaryDark = Color(0xFFE6EDF3);
  static const Color textSecondaryLight = Color(0xFF5C6F82);
  static const Color textSecondaryDark = Color(0xFF9FB3C8);

  // Players
  static const Color playerX = Color(0xFF00E676);
  static const Color playerO = Color(0xFFFFC107);

  // Status
  static const Color winColor = Color(0xFF00E676);
  static const Color drawColor = Color(0xFFFF7043);

  // Grid
  static const Color gridLight = Color(0xFFD6DEE6);
  static const Color gridDark = Color(0xFF22303C);

  // Gradients
  static const LinearGradient brandGradient = LinearGradient(
    colors: [Color(0xFF00E676), Color(0xFF00BFA5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkBgGradient = LinearGradient(
    colors: [Color(0xFF0A0F14), Color(0xFF121A22)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient lightBgGradient = LinearGradient(
    colors: [Color(0xFFF5F7FA), Color(0xFFEAF0F6)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static Color textPrimary(bool isDark) =>
      isDark ? textPrimaryDark : textPrimaryLight;

  static Color textSecondary(bool isDark) =>
      isDark ? textSecondaryDark : textSecondaryLight;

  static Color surface(bool isDark) =>
      isDark ? surfaceDark : surfaceLight;

  static Color background(bool isDark) =>
      isDark ? backgroundDark : backgroundLight;

  static Color grid(bool isDark) =>
      isDark ? gridDark : gridLight;

  static Color primary(bool isDark) =>
      isDark ? primaryDark : primaryLight;
}
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryLight,
        secondary: AppColors.accentLight,
        surface: AppColors.surfaceLight,
      ),
      scaffoldBackgroundColor: AppColors.backgroundLight,
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryLight,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryDark,
        secondary: AppColors.accentDark,
        surface: AppColors.surfaceDark,
      ),
      scaffoldBackgroundColor: AppColors.backgroundDark,
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryDark,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
