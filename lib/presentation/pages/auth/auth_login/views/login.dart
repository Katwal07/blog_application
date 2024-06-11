part of 'login_imports.dart';

@RoutePage()
class Login extends StatelessWidget {
  const Login({super.key});

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
            const LoginLogo(),
            24.h.heightBox,
        
            /// Login Heading
            const LoginHeading(),
            24.h.heightBox,
        
            /// Login Form
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}