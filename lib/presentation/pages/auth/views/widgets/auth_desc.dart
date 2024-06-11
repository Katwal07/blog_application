part of 'widget_imports.dart';

class AuthDesc extends StatelessWidget {
  const AuthDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 531.h,
      left: 23.w,
      child: Text(
        'Explore the world,\nBillions of Thoughts',
        style: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
