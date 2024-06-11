part of 'widget_imports.dart';

class SignupLogo extends StatelessWidget {
  const SignupLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPathWidget(
      child: Container(
          height: 130,
          color: AppColor.primaryColor,
          padding: EdgeInsets.only(bottom: 50.h),
          child: const Image(
            width: 129,
            height: 42,
            image: AssetImage(
              AppImageStrings.mainLogo,
            ),
          ).centered()),
    );
  }
}
