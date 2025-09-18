import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_/core/constant/padding.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      padding: AppPadding.screenHorizontal,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        boxShadow: [
          BoxShadow(
            color: Colors.pinkAccent.withValues(alpha: 0.5),
            offset: const Offset(4, 5),
            blurRadius: 15.0,
            spreadRadius: 2.0,
          ),
        ],
        color: Colors.cyanAccent.withValues(alpha: 0.3),
      ),
      child: Row(
        children: [
          Text(
            "safrid",

            style: style.labelLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            "About",
            style: style.labelLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            "Projects",
            style: style.labelLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            "Skills",
            style: style.labelLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            "Contact",
            style: style.labelLarge!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
