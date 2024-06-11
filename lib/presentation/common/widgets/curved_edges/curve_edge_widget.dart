part of '../widget_import.dart';

class AppCurveEdge extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    //This line moves the starting point of the path to be bottom-left corner of the widget
    path.lineTo(0, size.height);

    //The first control point(firstCurve) is located slightly above the bottom-left corner, 
    //and the second control point(lastCurve) is located to the right of the first control point.
    final firstCurve = Offset(0, size.height-20);
    final lastCurve = Offset(30, size.height-20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(0, size.height-20);
    final secondLastCurve = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    final thirdFirstCurve = Offset(size.width, size.height-20);
    final thirdLastCurve = Offset(size.width, size.height);
        path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);



    //This line connects the last point of the Bézier curve to the top-right corner of the widget.
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}