part of 'widget_imports.dart';

class SignupHeading extends StatelessWidget {
  const SignupHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Signup',
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .apply(color: AppColor.primaryColor),
    );
  }
}

