part of 'splash_imports.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    moveToOnBoardingScreen();
  }
  moveToOnBoardingScreen()async{
    await Future.delayed(const Duration(seconds: 3),(){
      AutoRouter.of(context).push(const OnBoardingScreenRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: FadedScaleAnimation(
          fadeDuration: const Duration(seconds: 2),
          scaleDuration: const Duration(seconds: 2),
          scaleCurve: Curves.fastOutSlowIn,
          fadeCurve: Curves.fastEaseInToSlowEaseOut,
          child: const Image(
            width: 139,
            height: 42,
            image: AssetImage(
              AppImageStrings.splashScreenLogo,
            ),
          ),
        ),
      ),
    );
  }
}
