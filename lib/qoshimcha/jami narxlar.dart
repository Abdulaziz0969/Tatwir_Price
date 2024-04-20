import 'package:flutter/material.dart';

class BoshqaOyna extends StatelessWidget {
  final int narxAralashSavdo;
  final int totalsumma;

  BoshqaOyna({
    required this.narxAralashSavdo,
    required this.totalsumma,
});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("Narx: $narxAralashSavdo/$totalsumma ",),

        ),
      ],
    );
  }
}
