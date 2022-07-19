import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: const Color(0xffEFEFEF)),
      child: Row(
        children: [
          const Icon(CupertinoIcons.search, color: Color(0xff9F9F9F)),
          Text(
            "Search for shops, orders ...",
            style: customTheme(context).regular.copyWith(color: const Color(0xff9F9F9F), fontSize: 11),
          )
        ],
      ),
    );
  }
}
