import 'dart:ffi';

import 'package:carebea/app/modules/add_shop/models/list_category.dart';
import 'package:carebea/app/modules/add_shop/models/list_routes_model.dart' as route;
import 'package:carebea/app/modules/add_shop/models/list_state_model.dart';
import 'package:carebea/app/modules/add_shop/models/list_zone_model.dart' as zone;
import 'package:carebea/app/routes/app_pages.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_radio_button.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../core/helper.dart';
import '../../../utils/theme.dart';
import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_textfield.dart';
import '../../shops/models/shop_model.dart';
import '../controllers/add_shop_controller.dart';
import 'dart:developer' as developer;

class AddShopView extends GetView<AddShopController> {
  AddShopView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => controller.onWillpopClose(),
      child: Scaffold(
        appBar: appBar(context),

        body: SingleChildScrollView(
          child: Form(
            key: controller.addShopFormKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(Icons.arrow_back_ios_new, size: 20,)),
                      SizedBox(width: 15,),
                      Text('Add new shop',
                        style: customTheme(context).medium.copyWith(
                            fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),

                  Text(
                    'Shop name',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    textcontroller: controller.name,
                    validaton: (value) {
                      if (value == null || value
                          .trim()
                          .isEmpty) {
                        return 'Shop name can\'t be empty';
                      }
                      return null;
                    },
                    // onChanged: (value)=>(controller.name).toString() = value!.trim() ,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(
                        text: 'Last name',
                        style: customTheme(context).regular.copyWith(
                            fontSize: 12),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '  (location should be the last name)',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontStyle: FontStyle.italic)),
                        ],
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    validaton: (value) {
                      if (value == null || value
                          .trim()
                          .isEmpty) {
                        return 'Last name can\'t be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Shop category",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 12),
                    child: DropdownSearch<CategoryList>(
                      validator: (value) {
                        if (value == null) {
                          return "Shop category  can\'t be empty";
                        }
                        return null;
                      },
                      dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .extension<CustomTheme>()!
                                  .textFormFieldColor)),

                      items: controller.category,
                      itemAsString: (categoryList) =>
                      categoryList.name!,
                      onChanged: (data) {
                        controller.selectedCategory = data;
                      },
                    ),
                  ),
                  Text(
                    'Customer type',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 10,),
                  Obx(() {
                    return Row(
                      children: [
                        CustomRadioButton<int>(groupValue: controller
                            .selectedRadio.value,
                          color: Theme.of(context).extension<CustomTheme>()!
                              .primary,
                          label: 'B2B',
                          value: 1,
                          onChanged: (val) {
                            controller.selectedRadio(val);
                          },),
                        SizedBox(width: 50,),
                        CustomRadioButton<int>(groupValue: controller
                            .selectedRadio.value,
                            color: Theme.of(context).extension<CustomTheme>()!
                                .primary,
                            label: 'B2C',
                            value: 2,
                            onChanged: (val) {
                              controller.selectedRadio(val);
                            })
                      ],
                    );
                  }),
                  SizedBox(height: 10,),

                  RichText(
                      text: TextSpan(
                        text: 'GST',
                        style: customTheme(context).regular.copyWith(
                            fontSize: 12),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '\*', style: TextStyle(color: Colors.blue)),
                        ],
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(RegExp(gstRegexp))
                    // ],
                    textcontroller: controller.gst,
                    validaton: (value) {
                      if (controller.selectedRadio.value == 1) {
                        if (value == null || value
                            .trim()
                            .isEmpty) {
                          return 'GST  can\'t be empty';
                        }
                        if (RegExp(gstRegexp).hasMatch(value)) {
                          return 'Invalid Gst';
                        }
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Location',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Theme.of(context)
                                .extension<CustomTheme>()!
                                .primary,
                          ),
                          Text('Add shop location',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Theme.of(context)
                                      .extension<CustomTheme>()!
                                      .primary))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Local area/city',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    textcontroller: controller.localArea,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z0-9]+|\b\s')),
                    ],
                    validaton: (value) {
                      if (value == null || value
                          .trim()
                          .isEmpty) {
                        return 'Local area/city can\'t be empty';
                      }
                      return null;
                    },
                    // onChanged: (value)=>controller.localArea.toString()!=value!.trim(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pincode',
                              style: customTheme(context)
                                  .regular
                                  .copyWith(fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              textcontroller: controller.zip,
                              maxlength: 6,
                              inputType: TextInputType.number,
                              validaton: (value) {
                                if (value!.isEmpty)
                                  return 'pincode can\'t be empty';
                                else if (value.length < 6) {
                                  return "Pincode must be 6 digits";
                                }
                                return null;
                              },
                              // onChanged: (value)=>controller.zip.toString()!= value!,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'District',
                                style: customTheme(context)
                                    .regular
                                    .copyWith(fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomTextField(
                                textcontroller: controller.district,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[a-zA-Z0-9]+|\b\s')),
                                ],
                                validaton: (value) {
                                  if (value == null || value
                                      .trim()
                                      .isEmpty) {
                                    return 'District can\'t be empty';
                                  }
                                  return null;
                                },
                                // onChanged: (value)=>controller.district.toString() =value!.trim(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'State',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Obx(() {
                    if (controller.isStateListLoading.value) {
                      circularProgressIndicator(context);
                    }
                    return DropdownSearch<StateList>(
                      validator: (value) {
                        if (value?.stateName == null) {
                          return "State  can\'t be empty";
                        }
                        return null;
                      },
                      popupProps: const PopupProps.menu(
                        showSearchBox: true,
                        // showSelectedItems: true,
                      ),
                      dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .extension<CustomTheme>()!
                                  .textFormFieldColor)),
                      items: controller.stateList,
                      itemAsString: (StateList? stateList) =>
                      stateList!.stateName!,
                      onChanged: (data) {
                        controller.selectedStateList = data;
                      },
                      selectedItem: controller.selectedStateList,
                    );
                  }),

                  // CustomTextField(
                  //   validaton: (value) {
                  //     if (value == null || value
                  //         .trim()
                  //         .isEmpty) {
                  //       return 'State can\'t be empty';
                  //     }
                  //     return null;
                  //   },
                  //   inputFormatters: [
                  //     FilteringTextInputFormatter.allow(
                  //         RegExp(r'[a-zA-Z]+|\b\s')),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(
                        text: 'Phone number',
                        style: customTheme(context).regular.copyWith(
                            fontSize: 12),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '\*', style: TextStyle(color: Colors.blue)),
                        ],
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    textcontroller: controller.phone,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    maxlength: 10,
                    inputType: TextInputType.phone,
                    validaton: (value) {
                      if (value!.isEmpty)
                        return 'mobile number is required';
                      else if (value == '0000000000')
                        return 'Invalid number';
                      else if (value.length < 10)
                        return "Mobile number must be 10 digits";
                      return null;
                    },
                    // onChanged: (value)=>controller.phone.text = value!,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Branch",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 12),
                    child: DropdownSearch<String>(
                      validator: (String? value) {
                        if (value == null) {
                          return "Branch  can\'t be empty";
                        }
                        return null;
                      },
                      popupProps: const PopupProps.menu(
                        showSearchBox: true,
                        showSelectedItems: true,
                      ),
                      dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Theme.of(context)
                                  .extension<CustomTheme>()!
                                  .textFormFieldColor)),
                      items: const ["Kalamasseri", "Aluva", "Malappuram"],
                      selectedItem: "",
                    ),
                  ),
                  Text(
                    "Zone",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 12),
                    child: Obx(() {
                      if (controller.isZoneListLoading.value) {
                        return circularProgressIndicator(context);
                      }
                      return DropdownSearch<zone.PoolList>(
                        validator: (value) {
                          if (value?.name == null) {
                            return "Zone  can\'t be empty";
                          }
                          return null;
                        },
                        popupProps: const PopupProps.menu(
                          showSearchBox: true,
                          // showSelectedItems: true,
                        ),
                        dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Theme.of(context)
                                    .extension<CustomTheme>()!
                                    .textFormFieldColor)),
                        items: controller.zoneList,
                        itemAsString: (zone.PoolList? zoneList) =>
                        zoneList!.name!,
                        onChanged: (data) {
                          controller.selectedZone = data;
                        },
                        selectedItem: controller.selectedZone,
                      );
                    }),
                  ),
                  Text(
                    "Route",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 12),
                    child: Obx(() {
                      if (controller.isRoutesListLoading.value) {
                        return circularProgressIndicator(context);
                      }
                      return DropdownSearch<route.PoolList>(
                        validator: (value) {
                          if (value?.name == null) {
                            return "Route can\'t be empty";
                          }
                          return null;
                        },

                        popupProps: const PopupProps.menu(
                          showSearchBox: true,
                          // showSelectedItems: true,
                        ),
                        dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Theme.of(context)
                                    .extension<CustomTheme>()!
                                    .textFormFieldColor)),
                        items: controller.routeList,
                        itemAsString: (route.PoolList? routeList) =>
                        routeList!.name!,
                        onChanged: (data) {
                          controller.selectedRoute = data;
                        },
                        selectedItem: controller.selectedRoute,);
                    }),
                  ),
                  RichText(
                      text: TextSpan(
                        text: 'Opening balance',
                        style: customTheme(context).regular.copyWith(
                            fontSize: 12),
                        children: const <TextSpan>[
                          TextSpan(
                              text: '  (mandatory only for existing shops)',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontStyle: FontStyle.italic)),
                        ],
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(),
                  SizedBox(
                    height: 25,
                  ),
                  (Get.arguments['isEdit'] ?? false)
                      ? Obx(() {

                    return CustomButton(
                      onTap: () {
                        if (controller.addShopFormKey.currentState!
                            .validate()) {
                          controller.updateShop(
                            name: controller.name.text,
                            district: controller.district.text,
                            localArea: controller.localArea.text,
                            phone: controller.phone.text,
                            zip: controller.zip.text,
                            customerType: controller.selectedRadio.value,
                            shopCategoryId: controller.selectedCategory!.id!,
                            latitude: 0,
                            routeId: controller.selectedRoute!.id!,
                            longitude: 0,
                            gst: controller.gst.text,
                            stateId: controller.selectedStateList!.stateId!,
                            zoneId: controller.selectedZone!.id!,
                            salesPersonId: SharedPrefs.getUserId()!,
                            shopId: (Get.arguments['shop'] as ShopList).id!,
                          );
                        }
                      },
                      title: 'Update Shop',
                      isLoading:controller.isAddShopButtonPressed.value
                    );
                  })
                      : CustomButton(

                    onTap: () {
                      if (controller.addShopFormKey.currentState!.validate()) {
                        controller.addShop(
                          name: controller.name.text,
                          district: controller.district.text,
                          localArea: controller.localArea.text,
                          phone: controller.phone.text,
                          zip: controller.zip.text,
                          customerType: controller.selectedRadio.value,
                          shopCategoryId: controller.selectedCategory!.id!,
                          latitude: 0,
                          routeId: controller.selectedRoute!.id!,
                          longitude: 0,
                          gst: controller.gst.text,
                          stateId: controller.selectedStateList!.stateId!,
                          zoneId: controller.selectedZone!.id!,
                          salesPersonId: SharedPrefs.getUserId()!,
                        );
                      }
                    },
                    title: 'Add Shop',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

