part of 'widget_imports.dart';

class HomePageIndicator extends StatelessWidget {
  const HomePageIndicator({
    super.key,
    required this.homeViewModel,
  });

  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: homeViewModel.pageController,
      count: 5,
      effect: const ScaleEffect(
        activeDotColor: AppColor.primaryColor,
        dotHeight: 8,
        dotWidth: 8,
      ),
    );
  }
}