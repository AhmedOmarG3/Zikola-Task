import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/onboarding/presentation/widgets/background_circle.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
    required this.child,
    required this.color,
    this.opacity,
  });

  final Widget child;
  final Color color;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw, //sw = screen width
      height: 1.sh, // sh = screen height
      color: color,
      child: Stack(
        children: [
          Positioned(
            left: 20.w,
            top: -100.h,
            right: -120.w,
            child: BackgroundCircle(diameter: 300.r, opacity: opacity ?? 0.02),
          ),
          Positioned(
            top: 100.h,
            left: -50.w,
            child: BackgroundCircle(diameter: 150.r, opacity: opacity ?? 0.02),
          ),
          Positioned(
            bottom: 100.h,
            left: -200.w,
            child: BackgroundCircle(diameter: 350.r, opacity: opacity ?? 0.02),
          ),
          Positioned(
            bottom: -100.h,
            left: -100.w,
            child: BackgroundCircle(diameter: 200.r, opacity: opacity ?? 0.02),
          ),
          Positioned(
            bottom: 110.h,
            right: 100.w,
            child: BackgroundCircle(diameter: 90.r, opacity: opacity ?? 0.02),
          ),
          child,
        ],
      ),
    );
  }
}

class BackgroundCircle extends StatelessWidget {
  final double diameter;

  const BackgroundCircle({super.key, required this.diameter, this.opacity});
  final double? opacity;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter.r,
      height: diameter.r,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(opacity ?? 0.02),
        shape: BoxShape.circle,
      ),
    );
  }
}
