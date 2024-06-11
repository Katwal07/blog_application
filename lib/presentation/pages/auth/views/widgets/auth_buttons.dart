part of 'widget_imports.dart';

class AuthLoginRegisterButton extends StatelessWidget {
  const AuthLoginRegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 659.h,
      left: 23.w,
      right: 23.w,
      child: Column(
        children: [
          CommonElevatedButton(
            onPressed: ()=> AutoRouter.of(context).push(const LoginRoute()),
            text: 'Login',
          ),
          12.h.heightBox,
          CommonElevatedButton(
            text: 'Register',
            onPressed: () {},
            backgroundColor: Colors.transparent,
            borderColor: Colors.white,
          )
        ],
      ),
    );
  }
}
