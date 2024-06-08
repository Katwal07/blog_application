part of 'widgets_import.dart';

class OnBoardPageIndicator extends StatelessWidget {
  const OnBoardPageIndicator({
    super.key,
    required this.onBoardingViewModel,
    this.count = 3,
    this.dotHeight = 12,
    this.dotWidth = 12,
    this.activeDotColor = AppColor.primaryColor,
  });

  final OnBoardingViewModel onBoardingViewModel;
  final int count;
  final int dotHeight;
  final int dotWidth;
  final Color activeDotColor;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: onBoardingViewModel.pageController,
      count: 3,
      effect: const SwapEffect(
        activeDotColor: AppColor.primaryColor,
        dotHeight: 12,
        dotWidth: 12,
      ),
    );
  }
}
