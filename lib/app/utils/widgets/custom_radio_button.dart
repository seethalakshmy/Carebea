import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomRadioButton<T> extends StatelessWidget {
  const CustomRadioButton({
    Key? key,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    this.color,
    this.label,
  }) : super(key: key);

  final T groupValue;
  final T value;
  final ValueChanged<T> onChanged;
  final Color? color;
  final String? label;

  @override
  Widget build(BuildContext context) {
    var _color = (color ?? customTheme(context).secondary);
    return Center(
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          onChanged(value);
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 13,
              backgroundColor: _color.withOpacity(.2),
              child: CircleAvatar(
                backgroundColor: groupValue == value ? _color : Colors.transparent,
                radius: 8,
              ),
            ),
            if (label != null) const SizedBox(width: 9),
            if (label != null)
              Text(
                label!,
                style: customTheme(context).regular.copyWith(fontSize: 11),
              )
          ],
        ),
      ),
    );
  }
}
