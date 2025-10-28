import 'package:flutter/material.dart';

class AlignmentCardRow extends StatelessWidget {
  final String title;
  final MainAxisAlignment mainAxis;
  final CrossAxisAlignment crossAxis;

  const AlignmentCardRow({
    super.key,
    required this.title,
    this.mainAxis = MainAxisAlignment.center,
    this.crossAxis = CrossAxisAlignment.center,
  });

  Widget box(Color color, String label) => Container(
        width: 50,
        height: 50,
        color: color,
        alignment: Alignment.center,
        child: Text(label,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.indigo)),
            const SizedBox(height: 8),
            Container(
              height: 100,
              color: Colors.indigo.shade50,
              child: Row(
                mainAxisAlignment: mainAxis,
                crossAxisAlignment: crossAxis,
                children: [
                  box(Colors.teal, 'A'),
                  box(Colors.orange, 'B'),
                  box(Colors.purple, 'C'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlignmentCardColumn extends StatelessWidget {
  final String title;
  final MainAxisAlignment mainAxis;
  final CrossAxisAlignment crossAxis;

  const AlignmentCardColumn({
    super.key,
    required this.title,
    this.mainAxis = MainAxisAlignment.center,
    this.crossAxis = CrossAxisAlignment.center,
  });

  Widget box(Color color, String label) => Container(
        width: 50,
        height: 50,
        color: color,
        alignment: Alignment.center,
        child: Text(label,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
            const SizedBox(height: 8),
            Container(
              height: 200,
              color: Colors.teal.shade50,
              child: Column(
                mainAxisAlignment: mainAxis,
                crossAxisAlignment: crossAxis,
                children: [
                  box(Colors.teal, '1'),
                  box(Colors.orange, '2'),
                  box(Colors.purple, '3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
