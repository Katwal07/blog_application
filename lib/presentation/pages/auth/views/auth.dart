part of 'auth_imports.dart';

@RoutePage()
class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImageStrings.backgroundImage))),
      child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              /// Auth Main Logo
               AuthLogo(),

              /// Auth description
               AuthDesc(),

              /// Login and Register Buttons
              AuthLoginRegisterButton(),
            ],
          )),
    );
  }
}



