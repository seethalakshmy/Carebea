import 'package:flutter/cupertino.dart';

class ReferenceListContent extends StatelessWidget {
  const ReferenceListContent({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text(title),
              ),
              Text(":"),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 4,
                child: Text(subTitle),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
