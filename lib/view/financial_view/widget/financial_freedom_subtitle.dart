import 'package:flutter/material.dart';

class FinancialFreedomSubtitle extends StatelessWidget {
  const FinancialFreedomSubtitle({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      subtitle,
      style: TextStyle(fontSize: 16),
    ));
  }
}
