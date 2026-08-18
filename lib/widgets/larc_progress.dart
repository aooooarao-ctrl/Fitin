import 'package:flutter/material.dart';

class LARCProgress extends StatelessWidget {
  final double value;
  final String label;
  final Color? color;
  
  const LARCProgress({Key? key, required this.value, required this.label, this.color}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(label), const SizedBox(height: 8), LinearProgressIndicator(value: value.clamp(0.0, 1.0), minHeight: 8)]);
  }
}
