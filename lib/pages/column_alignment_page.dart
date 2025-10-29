import 'package:flutter/material.dart';
import '../widgets/alignment_card.dart';

class ColumnAlignmentPage extends StatelessWidget {
  const ColumnAlignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Alignment — DUTARO'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AlignmentCardColumn(
              title: 'MainAxisAlignment.center',
              mainAxis: MainAxisAlignment.center,
            ),
            AlignmentCardColumn(
              title: 'MainAxisAlignment.spaceAround',
              mainAxis: MainAxisAlignment.spaceAround,
            ),
            AlignmentCardColumn(
              title: 'MainAxisAlignment.spaceBetween',
              mainAxis: MainAxisAlignment.spaceBetween,
            ),
            AlignmentCardColumn(
              title: 'MainAxisAlignment.spaceEvenly',
              mainAxis: MainAxisAlignment.spaceEvenly,
            ),
            AlignmentCardColumn(
              title: 'MainAxisAlignment.start, CrossAxis.start',
              mainAxis: MainAxisAlignment.start,
              crossAxis: CrossAxisAlignment.start,
            ),
            AlignmentCardColumn(
              title: 'MainAxisAlignment.end, CrossAxis.end',
              mainAxis: MainAxisAlignment.end,
              crossAxis: CrossAxisAlignment.end,
            ),
          ],
        ),
      ),
    );
  }
}
