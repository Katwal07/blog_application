part of 'widgets_import.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key, this.onPresses, required this.buttonText,
  });
  final VoidCallback? onPresses;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPresses,
        child: buttonText.text.make(),
      ),
    );
  }
}