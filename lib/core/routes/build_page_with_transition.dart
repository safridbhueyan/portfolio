import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum PageTransitionType { slideRightToLeft, slideBottomToTop, fade, slideLeftToRight }

CustomTransitionPage buildPageWithTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  PageTransitionType transitionType = PageTransitionType.slideRightToLeft,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      switch (transitionType) {
        case PageTransitionType.slideBottomToTop:
          return SlideTransition(
            position: animation.drive(
              Tween(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.ease)),
            ),
            child: child,
          );

        case PageTransitionType.fade:
          return FadeTransition(opacity: animation, child: child);

        case PageTransitionType.slideRightToLeft:
          return SlideTransition(
            position: animation.drive(
              Tween(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.ease)),
            ),
            child: child,
          );

        case PageTransitionType.slideLeftToRight:
          return SlideTransition(
            position: animation.drive(
              Tween(
                begin: const Offset(-1.0, 0.0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.ease)),
            ),
            child: child,
          );
      }
    },
  );
}
