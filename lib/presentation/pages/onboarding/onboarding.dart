part of 'onboarding_imports.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final OnBoardingViewModel onBoardingViewModel = OnBoardingViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /// --- OnBoarding Screen Logo
              const OnBoardingHeadingLogo(),

              63.heightBox,

              /// --- OnBoarding Screen Horizontal PageView
              PageView(
                controller: onBoardingViewModel.pageController,
                children: const [
                  HorizontalPageView(
                    image: AppImageStrings.onBoardingImage1,
                    text: AppText.onBoardingDesc1,
                  ),
                  HorizontalPageView(
                    image: AppImageStrings.onBoardingImage2,
                    text: AppText.onBoardingDesc2,
                  ),
                  HorizontalPageView(
                    image: AppImageStrings.onBoardingImage3,
                    text: AppText.onBoardingDesc3,
                  ),
                ],
              ).flexible(),

           

              /// --- Get Started Button
               GetStartedButton(buttonText: 'Get Started',onPresses: (){},),

              61.heightBox,

              /// --- Skip and Next Button and SmoothPageIndicator
              OnBoardingSkipAndNextButton(onBoardingViewModel: onBoardingViewModel),

              61.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}









