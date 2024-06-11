part of '../widget_import.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColor.primaryColor,
    this.borderColor = AppColor.primaryColor,
  });

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor, borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 41.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(color: borderColor),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white),
        ),
      ),
    );
  }
}
