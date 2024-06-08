part of 'widgets_import.dart';

class OnBoardingSkipAndNextButton extends StatelessWidget {
  const OnBoardingSkipAndNextButton({
    super.key,
    required this.onBoardingViewModel,
  });

  final OnBoardingViewModel onBoardingViewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        "Skip"
            .text
            .textStyle(Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: AppColor.primaryColor))
            .make(),
    
        OnBoardPageIndicator(onBoardingViewModel: onBoardingViewModel),
        
        "Next"
            .text
            .textStyle(Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: AppColor.primaryColor))
            .make(),
      ],
    );
  }
}