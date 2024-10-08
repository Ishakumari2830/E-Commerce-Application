import 'package:flutter/material.dart';
class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
  //create custom shape
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height-20);
    final lastCurve = Offset(30, size.height-20);
    path .quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx,lastCurve.dy);

    final SecondfirstCurve = Offset(0, size.height-20);
    final SecondlastCurve = Offset(size.width-30, size.height-20);
    path .quadraticBezierTo(SecondfirstCurve.dx, SecondfirstCurve.dy, SecondlastCurve.dx,SecondlastCurve.dy);

    final thirdfirstCurve = Offset(size.width, size.height-20);
    final thirdlastCurve = Offset(size.width, size.height);
    path .quadraticBezierTo(thirdfirstCurve.dx, thirdfirstCurve.dy, thirdlastCurve.dx,thirdlastCurve.dy);

    path.lineTo(size.width, 0);//complete path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}