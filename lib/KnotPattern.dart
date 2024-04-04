import 'package:flutter/material.dart';

class KnotPattern extends StatelessWidget {
  const KnotPattern({super.key, required this.knotData});
  final List knotData;


  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "f"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "b"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "fb"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "bf"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row (
            children: [
              SizedBox(width: 35),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "f"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "b"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "fb"),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "f"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "b"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "fb"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "bf"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row (
            children: [
              SizedBox(width: 35),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "f"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "b"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "fb"),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "f"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "b"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "fb"),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: Colors.pink, knotType: "bf"),
                ),
              ),
            ],
          ),
        ]
    );
  }
}

class KnotPainter extends CustomPainter {
  const KnotPainter({required this.x, required this.y, required this.colour, required this.knotType});
  final double x, y;
  final String knotType;
  final Color colour;

  @override
  void paint(Canvas canvas, Size size) {
    final paintFill = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;
    final paintStroke = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final fKnot = Path()
      ..moveTo(x+(0.25)*size.width, y+(0.25)*size.height)
      ..lineTo(x+(0.75)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.75)*size.width, y+(0.5)*size.height)
      ..lineTo(x+(0.75)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.5)*size.width, y+(0.75)*size.height);

    final bKnot = Path()
      ..moveTo(x+(0.75)*size.width, y+(0.25)*size.height)
      ..lineTo(x+(0.25)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.25)*size.width, y+(0.5)*size.height)
      ..lineTo(x+(0.25)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.5)*size.width, y+(0.75)*size.height);

    final fbKnot = Path()
      ..moveTo(x+(0.375)*size.width, y+(0.25)*size.height)
      ..lineTo(x+(0.625)*size.width, y+(0.5)*size.height)
      ..lineTo(x+(0.375)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.375)*size.width, y+(0.5)*size.height)
      ..lineTo(x+(0.375)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.625)*size.width, y+(0.75)*size.height);

    final bfKnot = Path()
      ..moveTo(x+(0.625)*size.width, y+(0.25)*size.height)
      ..lineTo(x+(0.375)*size.width, y+(0.5)*size.height)
      ..lineTo(x+(0.625)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.625)*size.width, y+(0.5)*size.height)
      ..lineTo(x+(0.625)*size.width, y+(0.75)*size.height)
      ..lineTo(x+(0.375)*size.width, y+(0.75)*size.height);

    var knot = fKnot;       // default to forward knot

    if (knotType == "b") {
      knot = bKnot;
    } else if (knotType == "fb") {
      knot = fbKnot;
    } else if (knotType == "bf") {
      knot = bfKnot;
    }

    // draw knot
    canvas.drawPath(knot, paintStroke);
    canvas.drawCircle(Offset(x+(size.width/2), y+(size.height/2)), size.width/2, paintStroke);
  }

  @override
  bool shouldRepaint(KnotPainter oldDelegate) => false;
}