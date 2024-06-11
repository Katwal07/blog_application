part of 'widget_imports.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Form(
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.mail_solid),
                  labelText: 'Email'),
            ),

            24.h.heightBox,

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.lock_fill),
                  suffixIcon: Icon(CupertinoIcons.eye_fill),
                  labelText: 'Password'),
            ),

            12.h.heightBox,

            ///Remember me and Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      'Remember me',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryColor),
                    ),
                  ],
                ),
                CommonTextButton(
                  buttonText: 'Forgot Password',
                  textStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.primaryColor),
                ),
              ],
            ),

            24.h.heightBox,

            /// Login Button
            CommonElevatedButton(
              text: 'Login',
              onPressed: () => AutoRouter.of(context).push(
                const GeneralRoute(),
              ),
            ),

            24.h.heightBox,

            /// Signup Button
            RichText(
              text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: AppColor.primaryColor),
                children: [
                  const TextSpan(text: 'Don\'t have an account?'),
                  TextSpan(
                    text: 'Signup',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => AutoRouter.of(context).push(
                            const SignupRoute(),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
