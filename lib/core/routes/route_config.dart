part of 'part_of_import.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.homescreen,
    navigatorKey: NavigationService.instance.navigatorKey,

    routes: [
      GoRoute(
        name: RouteName.homescreen,
        path: RouteName.homescreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),
      // GoRoute(
      //   name: RouteName.signUpOtpScreen,
      //   path: '${RouteName.signUpOtpScreen}/:email',
      //   pageBuilder: (context, state) {
      //     final email = state.pathParameters['email']!;
      //     return buildPageWithTransition(
      //       context: context,
      //       state: state,
      //       transitionType: PageTransitionType.fade,
      //       child: ,
      //     );
      //   },
      // ),
      // GoRoute(
      //   name: RouteName.payment,
      //   path: RouteName.payment,
      //   pageBuilder: (context, state) {
      //     return buildPageWithTransition(
      //       context: context,
      //       state: state,
      //       transitionType: PageTransitionType.slideRightToLeft,
      //       child: PaymentScreen(),
      //     );
      //   },
      // ),
    ],
  );
}
