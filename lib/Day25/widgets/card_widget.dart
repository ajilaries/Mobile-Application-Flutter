import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
class CardWidget extends StatelessWidget {
  final String text;
  const CardWidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.card,
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(padding: EdgeInsets.all(20), child: Text(text)),
    );
  }
}
