part of 'widget_imports.dart';

class LoginHeading extends StatelessWidget {
  const LoginHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login',
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .apply(color: AppColor.primaryColor),
    );
  }
}
