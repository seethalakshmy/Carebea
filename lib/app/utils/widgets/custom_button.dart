import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.icon,
    this.color,
    required this.onTap,
    this.isDense = false,
    this.isLoading = false,
    this.fontSize = 13,
  }) : super(key: key);

  final String title;
  final Widget? icon;
  final Color? color;
  final VoidCallback onTap;
  final bool isDense;
  final double fontSize;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(color: color ?? customTheme(context).primary, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisSize: isDense ? MainAxisSize.min : MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (icon != null) const SizedBox(width: 5),
            isLoading
                ? SizedBox(
                    height: fontSize + 4,
                    width: fontSize + 4,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  )
                : Text(
                    title,
                    style: customTheme(context).medium.copyWith(
                          color: Colors.white,
                          fontSize: fontSize,
                        ),
                  ),
          ],
        ),
      ),
    );
  }
}
