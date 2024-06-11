part of 'widget_imports.dart';


class AuthLogo extends StatelessWidget {
  const AuthLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 63.h,
      left: 34.w,
      child: Image(
        image: const AssetImage(AppImageStrings.mainLogo),
        height: 43.h,
        width: 390.w,
      ),
    );
  }
}
