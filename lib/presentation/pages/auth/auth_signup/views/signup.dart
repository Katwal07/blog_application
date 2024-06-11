part of 'signup_imports.dart';

@RoutePage()
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          /// Curved Edge Design
          ClipPathWidget(
            child: Container(
              height: 196,
              color: AppColor.primaryColor,
              padding: const EdgeInsets.all(0),
              child: const SizedBox(
                child: Image(
                  image: AssetImage(
                    AppImageStrings.mainLogo,
                  ),
                ),
              ),
            ),
          ),
          24.h.heightBox,

          /// Signup Heading
          Text(
            'Signup',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColor.primaryColor),
          ),
          24.h.heightBox,

          /// Signup Form
          Padding(
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

                  24.h.heightBox,

                  /// Confirm Password
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.lock_fill),
                        suffixIcon: Icon(CupertinoIcons.eye_fill),
                        labelText: 'Confirm Password'),
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
                    ],
                  ),

                  24.h.heightBox,

                  /// Signup button
                  CommonElevatedButton(text: 'SignUp', onPressed: () {}),

                  24.h.heightBox,

                  ///Login Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have an account?',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: AppColor.primaryColor),
                      ),
                      CommonTextButton(
                        onPressed: () {},
                        buttonText: 'Login',
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
