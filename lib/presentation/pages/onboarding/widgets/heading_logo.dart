part of 'widgets_import.dart';

class OnBoardingHeadingLogo extends StatelessWidget {
  const OnBoardingHeadingLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageStrings.onBoardingScreenLogo,
    );
  }
}