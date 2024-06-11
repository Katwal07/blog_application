part of 'onboard_widgets_import.dart';

class OnBoardingHeadingLogo extends StatelessWidget {
  const OnBoardingHeadingLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0,right: 24.w,bottom: 0,left: 24.w),
      child: Image.asset(
        AppImageStrings.mainLogo,
        width: AppSizes.logoWidth.w,
        height: AppSizes.logoHeight.h,
        color: AppColor.primaryColor,
      ),
    );
  }
}