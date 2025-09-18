import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.kodeMono(
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: GoogleFonts.kodeMono(
      fontSize: 26.sp,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: GoogleFonts.kodeMono(
      fontSize: 24.sp,

      fontWeight: FontWeight.w400,
    ),
    titleLarge: GoogleFonts.kodeMono(
      fontSize: 22.sp,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.kodeMono(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.kodeMono(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
    ),

    bodyLarge: GoogleFonts.kodeMono(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: GoogleFonts.kodeMono(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.kodeMono(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),

    labelLarge: GoogleFonts.kodeMono(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: GoogleFonts.kodeMono(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: GoogleFonts.kodeMono(
      fontSize: 11.sp,
      fontWeight: FontWeight.w400,
    ),
  );
}
