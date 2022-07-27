  import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

CircularProgressIndicator circularProgressIndicator(BuildContext context,{double strokeWidth=4}) {
    return CircularProgressIndicator(
      strokeWidth: strokeWidth,
                    valueColor: AlwaysStoppedAnimation(customTheme(context).primary),
                  );
  }