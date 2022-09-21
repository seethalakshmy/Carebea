import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/assets.dart';
import '../controllers/create_order_controller.dart';

class CartCountWidget extends StatelessWidget {
  CartCountWidget({
    Key? key,
    required this.id,
    // required this.count,
  }) : super(key: key);
  final int id;
  // final int count;
  CreateOrderController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: customTheme(context).secondary.withOpacity(.2),
          child: IconButton(
              color: const Color(0xff909090),
              onPressed: () {
                _controller.updateCartProduct(id, int.parse(_controller.cartproducts[id]!.text) - 1);
              },
              icon: const RotatedBox(quarterTurns: 3, child: Icon(Icons.chevron_left))),
        ),
        const SizedBox(width: 6),
        // Container(
        //   padding: const EdgeInsets.all(8),
        //   decoration: BoxDecoration(color: Color(0xffF1F1F1), borderRadius: BorderRadius.circular(2)),
        //   child: Text(
        //     _controller.cartproducts[id].toString(),
        //     style: customTheme(context).regular.copyWith(fontSize: 12),
        //   ),
        // ),
        Flexible(
            child: CustomTextField(
          textcontroller: _controller.cartproducts[id],
          autoFocus: true,
          focusNode: _controller.cartproductsFocusNode[id],
          inputType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onsubmit: (val) {
            _controller.updateCartProduct(id, int.tryParse(val ?? "0") ?? 0);
          },
        )),
        const SizedBox(width: 6),
        CircleAvatar(
          backgroundColor: customTheme(context).secondary.withOpacity(.2),
          child: IconButton(
              color: customTheme(context).secondary,
              onPressed: () {
                _controller.updateCartProduct(id, int.parse(_controller.cartproducts[id]!.text) + 1);
              },
              icon: RotatedBox(quarterTurns: 1, child: Icon(Icons.chevron_left))),
        ),
        const SizedBox(width: 6),
        InkWell(
          onTap: () {
            _controller.updateCartProduct(id, 0);
          },
          child: Image.asset(
            Assets.deleteIcon,
            scale: 3,
          ),
        )
      ],
    );
  }
}
