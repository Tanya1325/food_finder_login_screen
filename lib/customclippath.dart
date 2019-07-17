import 'package:flutter/material.dart';

class CustomPathClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 100);
    var firstendpoints = Offset(size.width * 0.5, size.height - 30);
    var firstcontrolpoints = Offset(size.width * 0.25, size.height + 5);
    path.quadraticBezierTo(firstcontrolpoints.dx, firstcontrolpoints.dy,
        firstendpoints.dx, firstendpoints.dy);
    var secondendpoints = Offset(size.width, size.height);
    var secondcontrolpoints = Offset(size.width * 0.75, size.height - 80);
    path.quadraticBezierTo(secondcontrolpoints.dx, secondcontrolpoints.dy,
        secondendpoints.dx, secondendpoints.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class CustomPathClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 100);
    var firstendpoints = Offset(size.width * 0.5, size.height - 30);
    var firstcontrolpoints = Offset(size.width * 0.25, size.height + 5);
    path.quadraticBezierTo(firstcontrolpoints.dx, firstcontrolpoints.dy,
        firstendpoints.dx, firstendpoints.dy);
    var secondendpoints = Offset(size.width, size.height);
    var secondcontrolpoints = Offset(size.width * 0.75, size.height - 80);
    path.quadraticBezierTo(secondcontrolpoints.dx, secondcontrolpoints.dy,
        secondendpoints.dx, secondendpoints.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
