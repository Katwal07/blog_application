part of 'router_import.dart';

@AutoRouterConfig(replaceInRouteName: "Router")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          page: SplashScreenRoute.page,
          path: "/",
          initial: true,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
        CustomRoute(
          page: OnBoardingScreenRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
        CustomRoute(
          page: AuthRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
         CustomRoute(
          page: SignupRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),

        CustomRoute(
          page: UpdateCategoryRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),

        CustomRoute(
          page: AddNewCategoryRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),

         CustomRoute(
          page: GeneralRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),

          CustomRoute(
          page: AddNewTagRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),

         CustomRoute(
          page: UpdateTagRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
         CustomRoute(
          page: HomeDetailsPostRoute.page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
        
      ];
}
