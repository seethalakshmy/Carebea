
import 'package:admin_580_tech/core/const.dart';
import 'package:admin_580_tech/core/custom_text.dart';
import 'package:admin_580_tech/core/image.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

import '../../widget/already/textformfield.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage>
    with TickerProviderStateMixin {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _couponController = TextEditingController();

  final ValueNotifier<Map<String, dynamic>> _userData = ValueNotifier({});

  late TabController _tabController;

  final List<Map<String, dynamic>> _cartList = [
    {
      'product_image': Images.tv3,
      'product_name': 'OnePlus smart Tv',
      'qty': '1',
      'total': '\$200',
    },
    {
      'product_image': Images.chair,
      'product_name': 'Chair',
      'qty': '2',
      'total': '\$300',
    },
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isLg(context) || Responsive.isMobile(context)
            ? Column(
          children: [
            _productDetails(),
            FxBox.h24,
            _personalInfo(),
          ],
        )
            : isXl(context)
            ? Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _productDetails()),
            FxBox.w24,
            Expanded(flex: 2, child: _personalInfo()),
          ],
        )
            : Column(
          children: [
            _productDetails(),
            FxBox.h24,
            _personalInfo(),
          ],
        ),
      ],
    );
  }

  Widget _personalInfo() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ValueListenableBuilder(
          valueListenable: _userData,
          builder: (context, value, child) {
            if (value.isEmpty) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    Strings.addYourInformations,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                          child: _formTextField(
                            title:Strings.firstName,
                            controller: _firstNameController,
                          )),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: _formTextField(
                            title:Strings.lastName,
                            controller: _lastNameController,
                          ))
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                          child: _formTextField(
                            title: Strings.email,
                            controller: _emailController,
                          )),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: _formTextField(
                            title:Strings.mobileNo,
                            controller: _numberController,
                          ))
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  _formTextField(
                    title: Strings.address,
                    maxLines: 3,
                    controller: _addressController,
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                          child: _formTextField(
                            title: Strings.city,
                            controller: _cityController,
                          )),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: _formTextField(
                            title: Strings.pincode,
                            controller: _pincodeController,
                          ))
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                          child: _formTextField(
                            title: Strings.state,
                            controller: _stateController,
                          )),
                      const SizedBox(width: 16.0),
                      Expanded(
                          child: _formTextField(
                            title: Strings.country,
                            controller: _countryController,
                          ))
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  _formTextField(
                    title: Strings.coupon,
                    controller: _couponController,
                  ),
                  const SizedBox(height: 16.0),
                  FxButton(
                    borderRadius: 4,
                    onPressed: () {
                      _userData.value = {
                        'First Name': _firstNameController.text.trim(),
                        'Last Name': _lastNameController.text.trim(),
                        'Email': _emailController.text.trim(),
                        'Mobile No.': _numberController.text.trim(),
                        'Address': _addressController.text.trim(),
                        'City': _cityController.text.trim(),
                        'Pincode': _pincodeController.text.trim(),
                        'State': _stateController.text.trim(),
                        'Country': _countryController.text.trim(),
                        'Coupon': _couponController.text.trim(),
                      };
                    },
                    text: 'Checkout',
                  )
                ],
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    Strings.yourInformations,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(child: _detailsText(value, 0)),
                      const SizedBox(width: 16.0),
                      Expanded(child: _detailsText(value, 1)),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(child: _detailsText(value, 2)),
                      const SizedBox(width: 16.0),
                      Expanded(child: _detailsText(value, 3)),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  _detailsText(value, 4),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(child: _detailsText(value, 5)),
                      const SizedBox(width: 16.0),
                      Expanded(child: _detailsText(value, 6)),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(child: _detailsText(value, 7)),
                      const SizedBox(width: 16.0),
                      Expanded(child: _detailsText(value, 8)),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  _detailsText(value, 9),
                  const SizedBox(height: 24.0),
                  const Text(
                    Strings.paymentOptions,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorWeight: 4,
                    indicatorColor: Theme.of(context).colorScheme.primary,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Theme.of(context).colorScheme.primary,
                    isScrollable: true,
                    physics: const BouncingScrollPhysics(),
                    tabs: const [
                      Tab(text: Strings.creditCard),
                      Tab(text: Strings.debitCard),
                      Tab(text: Strings.payPal),
                    ],
                  ),
                  SizedBox(
                    height: 140,
                    child: TabBarView(
                      controller: _tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 35,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              const CustomTextField(
                                hintText: 'Enter Card Number ',
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                prefixIcon: Icon(Icons.credit_card_rounded),
                              ),
                              FxBox.h12,
                              Row(
                                children: [
                                  const Expanded(
                                    child: CustomTextField(
                                      hintText: 'Enter Card Expire Date ',
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                    ),
                                  ),
                                  FxBox.w12,
                                  const Expanded(
                                    child: CustomTextField(
                                      hintText: 'Enter Card Cvv ',
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 35,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              const CustomTextField(
                                hintText: 'Enter Card Number ',
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                prefixIcon: Icon(Icons.credit_card_rounded),
                              ),
                              FxBox.h12,
                              Row(
                                children: [
                                  const Expanded(
                                    child: CustomTextField(
                                      hintText: 'Enter Card Expire Date ',
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                    ),
                                  ),
                                  FxBox.w12,
                                  const Expanded(
                                    child: CustomTextField(
                                      hintText: 'Enter Card Cvv ',
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 6,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: const CustomText(
                              title: Strings.payPalText),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  FxButton(
                    borderRadius: 4,
                    onPressed: () {
                      autoTabRouter!.setActiveIndex(56);
                    },
                    text: 'Pay now',
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Widget _formTextField(
      {required String title,
        int? maxLines,
        TextEditingController? controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          height: maxLines == null ? 35.0 : null,
          child: CustomTextField(
            controller: controller,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            maxLines: maxLines ?? 1,
          ),
        ),
      ],
    );
  }

  Widget _productDetails() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              Strings.productInformations,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            FxBox.h16,
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: _cartList.map((cartData) {
                  return SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            cartData['product_image'],
                            height: 60,
                          ),
                        ),
                        FxBox.w20,
                        Expanded(
                            child: CustomText(title: cartData['product_name'])),
                        FxBox.w10,
                        Expanded(
                            child: CustomText(
                              title: 'x${cartData['qty']}',
                            )),
                        FxBox.w10,
                        Expanded(
                            child: CustomText(
                              title: cartData['total'],
                            )),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailsText(Map<String, dynamic> details, int index) {
    return Row(
      children: [
        Text(
          '${details.keys.elementAt(index).replaceFirst('.', '').camelCase()} : ',
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        Text(
          '${details.values.elementAt(index)}',
        ),
      ],
    );
  }
}