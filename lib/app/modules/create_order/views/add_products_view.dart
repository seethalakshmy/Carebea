import 'package:carebea/app/modules/create_order/views/check_out_view.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_button.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductsView extends StatelessWidget {
  const AddProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 24,
        automaticallyImplyLeading: false,
        title: Image.asset(
          Assets.assetsLogo,
          scale: 4,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(context),
          _productsText(context),
          _search(context),
          const SizedBox(height: 19),
          Flexible(
            child: _productListView(),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.to(() => const CheckoutView());
        },
        child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
            color: customTheme(context).primary,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(7)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 23, right: 15),
            child: Row(
              children: [
                Text(
                  "5 items  |  ",
                  style: customTheme(context).regular.copyWith(fontSize: 13, color: Colors.white),
                ),
                Text(
                  "₹975",
                  style: customTheme(context).medium.copyWith(fontSize: 13, color: Colors.white),
                ),
                const Spacer(),
                Text(
                  "Place order   ",
                  style: customTheme(context).regular.copyWith(fontSize: 13, color: Colors.white),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView _productListView() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 15);
      },
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 19),
          child: ProductTile(),
        );
      },
    );
  }

  Padding _productsText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 19, 0, 10),
      child: Text(
        "Products",
        style: customTheme(context).medium.copyWith(fontSize: 13),
      ),
    );
  }

  Padding _search(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: CustomTextField(
        icon: const Icon(
          CupertinoIcons.search,
          color: Color(0xff9F9F9F),
        ),
        hint: "Search products",
      ),
    );
  }

  Container _title(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 23),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
          boxShadow: [BoxShadow(blurRadius: 10, color: customTheme(context).shadowColor)]),
      child: Text(
        "Trinity Shop",
        style: customTheme(context).medium.copyWith(fontSize: 14),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCard(
          margin: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _image(),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: RichText(
                                    maxLines: 3,
                                    overflow: TextOverflow.visible,
                                    text: TextSpan(
                                        text: "Eccelence Hand Wash Total Protect Plus ",
                                        children: const [
                                          TextSpan(text: "500ml", style: TextStyle(color: Color(0xff929292))),
                                        ],
                                        style: customTheme(context).regular.copyWith(fontSize: 11)),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                                decoration: BoxDecoration(
                                    color: customTheme(context).primary,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10), bottomLeft: Radius.circular(10))),
                                child: Text("BUY 2 GET 1 FREE",
                                    style: customTheme(context).regular.copyWith(fontSize: 10, color: Colors.white)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "₹205",
                                style: customTheme(context).medium.copyWith(fontSize: 12),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "₹205",
                                style: customTheme(context).regular.copyWith(
                                    fontSize: 9,
                                    color: const Color(0xff929292),
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomButton(
                                isDense: true,
                                title: "Add",
                                onTap: () {},
                                fontSize: 10,
                                color: const Color(0xff47BED9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                child: Text(
                  "*Offer valid until 30 June",
                  style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.black),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 30,
          width: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: customTheme(context).primary, borderRadius: BorderRadius.circular(100)),
          child: RichText(
            text: TextSpan(
                text: "10",
                children: [TextSpan(text: "%\noff", style: TextStyle(fontSize: 9))],
                style: customTheme(context).regular.copyWith(fontSize: 11, color: Colors.white, height: .9)),
          ),
        )
      ],
    );
  }

  Widget _image() {
    return SizedBox(
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 58 / 74,
          child: Image.asset(
            Assets.assetsLoginBackground,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}