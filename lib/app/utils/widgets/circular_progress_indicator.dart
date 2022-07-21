  import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

CircularProgressIndicator circularProgressIndicator(BuildContext context) {
    return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(customTheme(context).primary),
                  );
  }