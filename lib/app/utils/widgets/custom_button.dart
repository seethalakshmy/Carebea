import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.icon,
    this.color,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Widget? icon;
  final Color? color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            color: color ?? Theme.of(context).extension<CustomTheme>()!.primary,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (icon != null) const SizedBox(width: 5),
            Text(
              title,
              style: Theme.of(context).extension<CustomTheme>()!.medium.copyWith(
                    color: Colors.white,
                    fontSize: 13,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
