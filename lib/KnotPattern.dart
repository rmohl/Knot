import 'package:flutter/material.dart';

class KnotPattern extends StatelessWidget {
  const KnotPattern({super.key, required this.knotData, required this.colourData});
  final List<String> knotData;
  final List<Color> colourData;


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[0], knotType: knotData[0]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[1], knotType: knotData[1]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[2], knotType: knotData[2]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[3], knotType: knotData[3]),
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
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[4], knotType: knotData[4]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[5], knotType: knotData[5]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[6], knotType: knotData[6]),
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
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[7], knotType: knotData[7]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[8], knotType: knotData[8]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[9], knotType: knotData[9]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[10], knotType: knotData[10]),
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
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[11], knotType: knotData[11]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[12], knotType: knotData[12]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[13], knotType: knotData[13]),
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
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[14], knotType: knotData[14]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[15], knotType: knotData[15]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[16], knotType: knotData[16]),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: 50,
                height: 50,
                child: CustomPaint(
                  painter: KnotPainter(x: 0, y: 0, colour: colourData[17], knotType: knotData[17]),
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
      ..color = colour
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
    canvas.drawCircle(Offset(x+(size.width/2), y+(size.height/2)), size.width/2, paintFill);
    canvas.drawPath(knot, paintStroke);
    canvas.drawCircle(Offset(x+(size.width/2), y+(size.height/2)), size.width/2, paintStroke);
  }

  @override
  bool shouldRepaint(KnotPainter oldDelegate) => false;
}