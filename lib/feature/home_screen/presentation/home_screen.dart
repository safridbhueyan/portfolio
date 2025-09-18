import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_/feature/home_screen/presentation/widgets/background_img.dart';
import 'package:portfolio_/feature/home_screen/presentation/widgets/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImg(
      child: Column(
        children: [
          SizedBox(height: 10.h),
          HeaderSection(),
          SizedBox(height: 10.h),

          Center(
            child: Text("welcome", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
