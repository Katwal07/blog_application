part of '../widget_import.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
    super.key,
    this.onPressed,
    required this.buttonText, this.textStyle,
  });
  final VoidCallback? onPressed;
  final String buttonText;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle,
        ),
      ),
    );
  }
}