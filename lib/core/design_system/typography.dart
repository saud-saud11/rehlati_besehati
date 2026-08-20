import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTypography {
  static TextTheme get textTheme {
    return GoogleFonts.cairoTextTheme().copyWith(
      displayLarge: GoogleFonts.cairo(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.2,
      ),
      displayMedium: GoogleFonts.cairo(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.2,
      ),
      headlineLarge: GoogleFonts.cairo(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.3,
      ),
      titleLarge: GoogleFonts.cairo(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
        height: 1.4,
      ),
      bodyLarge: GoogleFonts.cairo(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        height: 1.5,
      ),
      bodyMedium: GoogleFonts.cairo(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
        height: 1.5,
      ),
      labelLarge: GoogleFonts.cairo(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
