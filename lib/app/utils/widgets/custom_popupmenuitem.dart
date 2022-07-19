 import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

PopupMenuItem<T> customPopupMenuItem<T>(BuildContext context,
      {required String name, T? value, bool isSelected = false, VoidCallback? onTap, bool showBorder = true}) {
    return PopupMenuItem(
        value: value,
        height: 0,
        padding: EdgeInsets.zero,
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.centerLeft,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: isSelected ? customTheme(context).popupButtonColor : Colors.white,
                ),
                child: Text(
                  name,
                  style: customTheme(context)
                      .regular
                      .copyWith(fontSize: 12, color: isSelected ? Colors.white : Colors.black),
                )),
            if (showBorder)
              Container(
                color: const Color(0xffEBEBEB),
                height: 1,
                width: double.infinity,
              )
          ],
        ));
  }