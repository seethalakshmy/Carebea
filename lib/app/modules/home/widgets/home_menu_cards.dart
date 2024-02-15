import 'package:carebea/app/utils/theme.dart';
import 'package:flutter/material.dart';

class HomeMenuIndividual extends StatelessWidget {
  const HomeMenuIndividual(
      {Key? key,
      this.asseticon,
      this.backgroundColor,
      this.gradients,
      required this.title,
      this.onTap,
      this.count,
      this.amount,
      this.isLoading = false})
      : super(key: key);

  final List<Color>? gradients;
  final Color? backgroundColor;
  final String title;
  final String? asseticon;
  final int? count;
  final double? amount;
  final VoidCallback? onTap;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          gradient:
              gradients != null ? LinearGradient(colors: gradients!) : null,
        ),
        child: Builder(builder: (context) {
          if (count != null || amount != null) {
            return isLoading == false
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _title(context),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: amount != null
                                ? Text(
                                    amount!.toStringAsFixed(2),
                                    style:
                                        customTheme(context).regular.copyWith(
                                              fontSize: 13,
                                              color: Colors.white,
                                            ),
                                  )
                                : Text(
                                    count.toString(),
                                    style:
                                        customTheme(context).regular.copyWith(
                                              fontSize: 13,
                                              color: Colors.white,
                                            ),
                                  ),
                          ),
                          _icon(),
                        ],
                      )
                    ],
                  )
                : const CircularProgressIndicator();
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: _title(context),
              ),
              _icon(),
            ],
          );
        }),
      ),
    );
  }

  Image _icon() {
    return Image.asset(
      asseticon!,
      width: 40,
      height: 40,
      alignment: Alignment.centerRight,
      color: Colors.white54,
    );
  }

  Widget _title(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: customTheme(context).medium.copyWith(
              fontSize: 10,
              color: Colors.white,
            ),
      ),
    );
  }
}
