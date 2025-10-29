import 'package:flutter/material.dart';
import '../widgets/alignment_card.dart';

class RowAlignmentPage extends StatelessWidget {
  const RowAlignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Alignment — DUTARO'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AlignmentCardRow(
              title: 'MainAxisAlignment.center',
              mainAxis: MainAxisAlignment.center,
            ),
            AlignmentCardRow(
              title: 'MainAxisAlignment.spaceAround',
              mainAxis: MainAxisAlignment.spaceAround,
            ),
            AlignmentCardRow(
              title: 'MainAxisAlignment.spaceBetween',
              mainAxis: MainAxisAlignment.spaceBetween,
            ),
            AlignmentCardRow(
              title: 'MainAxisAlignment.spaceEvenly',
              mainAxis: MainAxisAlignment.spaceEvenly,
            ),
            AlignmentCardRow(
              title: 'MainAxisAlignment.start',
              mainAxis: MainAxisAlignment.start,
            ),
            AlignmentCardRow(
              title: 'MainAxisAlignment.end',
              mainAxis: MainAxisAlignment.end,
            ),
          ],
        ),
      ),
    );
  }
}
