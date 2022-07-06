import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

class OrderStatusChip extends StatelessWidget {
  const OrderStatusChip({Key? key, required this.color, required this.statusText}) : super(key: key);
  final String statusText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color.withOpacity(.20),
      ),
      child: Text(
        statusText,
        style: customTheme(context).medium.copyWith(fontSize: 10, color: color),
      ),
    );
  }
}
