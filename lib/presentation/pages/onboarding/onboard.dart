part of 'onboard_imports.dart';

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
              /// OnBoarding Heading Logo
              const OnBoardingHeadingLogo(),

              SizedBox(
                height: 10.h,
              ),

              /// OnBoardingScreen Horizontal PageViews
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

              SizedBox(
                height: 10.h,
              ),

              /// Get Started Button
              CommonElevatedButton(
                text: 'Get Started',
                onPressed: () => AutoRouter.of(context).push(
                  const AuthRoute(),
                ),
              ),

              SizedBox(
                height: 51.h,
              ),

              /// Next , Skip Button and OnBoarding Page Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   CommonTextButton(buttonText: 'Skip',textStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: AppColor.primaryColor),),
                  OnBoardPageIndicator(
                      onBoardingViewModel: onBoardingViewModel),
                   CommonTextButton(buttonText: 'Next',textStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: AppColor.primaryColor),),
                ],
              ),

              SizedBox(
                height: 41.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
