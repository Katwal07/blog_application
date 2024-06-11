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
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Curved Edge Design
            const SignupLogo(),
            24.h.heightBox,

            /// Signup Heading
            const SignupHeading(),
            24.h.heightBox,

            /// Signup Form
            const SignupForm(),
          ],
        ),
      ),
    );
  }
}


