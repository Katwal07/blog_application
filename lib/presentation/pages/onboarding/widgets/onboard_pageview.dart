part of 'onboard_widgets_import.dart';

class HorizontalPageView extends StatelessWidget {
  const HorizontalPageView({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image,height: AppSizes.imageHeight.h,width: AppSizes.imageWidth.w,),
        SizedBox(height: 51.h,),
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}