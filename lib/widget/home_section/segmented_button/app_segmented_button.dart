import 'package:flutter/material.dart';

class AppSegmentedButton extends StatelessWidget {
  const AppSegmentedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: segments,
      selected: selected,
    );
  }
}
