import 'package:carebea/app/modules/add_shop/models/list_category.dart';
import 'package:carebea/app/modules/add_shop/models/list_routes_model.dart'
    as route;
import 'package:carebea/app/utils/shared_prefs.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_radio_button.dart';
import 'package:carebea/app/utils/widgets/map_location_view.dart';
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
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 17,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Add new shop',
                        style:
                            customTheme(context).medium.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  RichText(
                      text: TextSpan(
                    text: 'Shop name',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '\*', style: TextStyle(color: Colors.blue)),
                    ],
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    inputFormatters: [UpperCaseTextFormatter()],

                    textcontroller: controller.name,
                    validaton: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Shop name can\'t be empty';
                      }
                      return null;
                    },
                    // onChanged: (value)=>(controller.name).toString() = value!.trim() ,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(
                    text: 'Shop location',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '\*', style: TextStyle(color: Colors.blue)),
                      // TextSpan(
                      //     text: '  (location should be the last name)',
                      //     style: TextStyle(
                      //         color: Colors.black54,
                      //         fontStyle: FontStyle.italic)),
                    ],
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    textCapitalization: TextCapitalization.sentences,
                    textcontroller: controller.lastName,
                    validaton: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Last name can\'t be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(
                    text: "Shop category",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '\*', style: TextStyle(color: Colors.blue)),
                    ],
                  )),

                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 12),
                    child: DropdownSearch<CategoryList>(
                      dropdownBuilder: (context, selectedItem) => Text(
                        selectedItem?.name ?? "",
                        style: customTheme(Get.context!)
                            .regular
                            .copyWith(fontSize: 11, color: Colors.black),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return "Shop category  can\'t be empty";
                        }
                        return null;
                      },
                      dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                              // hintText: "Choose",
                              // hintStyle: customTheme(Get.context!)
                              //     .regular
                              //     .copyWith(fontSize: 11, color: const Color(0xff929292)),
                              isDense: true,
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
                      itemAsString: (categoryList) => categoryList.name!,
                      onChanged: (data) {
                        controller.selectedCategory = data;
                      },
                      selectedItem: controller.selectedCategory,
                    ),
                  ),
                  Text(
                    'Customer type',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(() {
                    return Row(
                      children: [
                        CustomRadioButton<int>(
                          groupValue: controller.selectedRadio.value,
                          color: Theme.of(context)
                              .extension<CustomTheme>()!
                              .primary,
                          label: 'B2B',
                          value: 1,
                          onChanged: (val) {
                            controller.selectedRadio(val);
                          },
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        CustomRadioButton<int>(
                            groupValue: controller.selectedRadio.value,
                            color: Theme.of(context)
                                .extension<CustomTheme>()!
                                .primary,
                            label: 'B2C',
                            value: 2,
                            onChanged: (val) {
                              controller.selectedRadio(val);
                            })
                      ],
                    );
                  }),
                  const SizedBox(
                    height: 10,
                  ),

                  Obx(() {
                    if (controller.selectedRadio.value == 2) {
                      return const SizedBox.shrink();
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                          text: 'GST',
                          style: customTheme(context)
                              .regular
                              .copyWith(fontSize: 12),
                          children: const <TextSpan>[
                            TextSpan(
                                text: '\*',
                                style: TextStyle(color: Colors.blue)),
                          ],
                        )),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          // inputFormatters: [
                          //   FilteringTextInputFormatter.allow(RegExp(gstRegexp))
                          // ],
                          textcontroller: controller.gst,
                          validaton: (value) {
                            if (controller.selectedRadio.value == 1 ||
                                (value != null && value.trim().isNotEmpty)) {
                              if (value == null || value.trim().isEmpty) {
                                return 'GST Number can\'t be empty';
                              }
                              if (!RegExp(gstRegexp).hasMatch(value)) {
                                return 'Invalid GST Number';
                              }
                              return null;
                            }
                          },
                        ),
                      ],
                    );
                  }),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Location',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  Obx(() {
                    if (controller.searchingLocation.value) {
                      return Center(child: circularProgressIndicator(context));
                    }
                    if (controller.currentLocation != null) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MapLocationView(
                                latitude: controller.currentLocation!.latitude!,
                                longitude:
                                    controller.currentLocation!.longitude!),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: InkWell(
                                onTap: () {
                                  controller.fetchLocation();
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Theme.of(context)
                                          .extension<CustomTheme>()!
                                          .primary,
                                    ),
                                    Text('Update shop location',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .extension<CustomTheme>()!
                                                .primary))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          controller.fetchLocation();
                        },
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
                    );
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(
                    text: 'Local area/city',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '\*', style: TextStyle(color: Colors.blue)),
                    ],
                  )),

                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    textcontroller: controller.localArea,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z0-9]+|\b\s')),
                    ],
                    validaton: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Local area/city can\'t be empty';
                      }
                      return null;
                    },
                    // onChanged: (value)=>controller.localArea.toString()!=value!.trim(),
                  ),
                  const SizedBox(
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
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              textcontroller: controller.zip,
                              maxlength: 6,
                              inputType: TextInputType.number,
                              // validaton: (value) {
                              // if (value == null || value.trim().isEmpty) {
                              //   return 'pincode can\'t be empty';
                              // }
                              // if (value.length < 6) {
                              //   return "Pincode must be 6 digits";
                              // }
                              // if (!RegExp(pinRegexp).hasMatch(value)) {
                              //   return 'Invalid Pincode';
                              // }
                              // return null;
                              // },
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
                              const SizedBox(
                                height: 5,
                              ),
                              CustomTextField(
                                textcontroller: controller.district,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[a-zA-Z0-9]+|\b\s')),
                                ],
                                // validaton: (value) {
                                // if (value == null || value.trim().isEmpty) {
                                //   return 'District can\'t be empty';
                                // }
                                // return null;
                                // },
                                // onChanged: (value)=>controller.district.toString() =value!.trim(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Text(
                  //   'State',
                  //   style: customTheme(context).regular.copyWith(fontSize: 12),
                  // ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  // Obx(() {
                  //   if (controller.isStateListLoading.value) {
                  //     circularProgressIndicator(context);
                  //   }
                  //   return DropdownSearch<StateList>(
                  //     validator: (value) {
                  //       if (value?.stateName == null) {
                  //         return "State  can\'t be empty";
                  //       }
                  //       return null;
                  //     },
                  //     dropdownBuilder: (context, selectedItem) => Text(
                  //       selectedItem?.stateName ?? "",
                  //       style: customTheme(Get.context!).regular.copyWith(fontSize: 11, color: Colors.black),
                  //     ),
                  //     popupProps: const PopupProps.menu(
                  //       showSearchBox: true,
                  //       // showSelectedItems: true,
                  //     ),
                  //     dropdownDecoratorProps: DropDownDecoratorProps(
                  //         dropdownSearchDecoration: InputDecoration(
                  //             // hintText: "Choose",
                  //             // hintStyle: customTheme(Get.context!)
                  //             //     .regular
                  //             //     .copyWith(fontSize: 11, color: const Color(0xff929292)),
                  //             isDense: true,
                  //             border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(8),
                  //               borderSide: BorderSide.none,
                  //             ),
                  //             enabledBorder: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(8),
                  //               borderSide: BorderSide.none,
                  //             ),
                  //             focusedBorder: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(8),
                  //               borderSide: BorderSide.none,
                  //             ),
                  //             filled: true,
                  //             fillColor: Theme.of(context).extension<CustomTheme>()!.textFormFieldColor)),
                  //     items: controller.stateList,
                  //     itemAsString: (StateList? stateList) => stateList!.stateName!,
                  //     onChanged: (data) {
                  //       controller.selectedStateList = data;
                  //     },
                  //     selectedItem: controller.selectedStateList,
                  //   );
                  // }),

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
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(
                    text: 'Phone number',
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '\*', style: TextStyle(color: Colors.blue)),
                    ],
                  )),
                  const SizedBox(
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
                      if (value!.isEmpty) {
                        return 'Mobile Number is required';
                      }
                      var splitPhone = value.split('');
                      var phoneSet = splitPhone.toSet();

                      if (phoneSet.length == 1) {
                        return 'Invalid number';
                      }
                      if (value.length < 10)
                        return "Mobile number must be 10 digits";
                      return null;
                    },
                    // onChanged: (value)=>controller.phone.text = value!,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Branch",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    initialvalue: controller.branchName,
                    enabled: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 8, bottom: 12),
                  //   child: DropdownSearch<String>(
                  //     dropdownBuilder: (context, selectedItem) => Text(
                  //       selectedItem ?? "",
                  //       style: customTheme(Get.context!).regular.copyWith(fontSize: 11, color: Colors.black),
                  //     ),
                  //     validator: (value) {
                  //       if (value == null) {
                  //         return "Branch  can\'t be empty";
                  //       }
                  //       return null;
                  //     },
                  //     // popupProps: const PopupProps.menu(
                  //     //   showSearchBox: true,
                  //     //   showSelectedItems: true,
                  //     // ),
                  //     dropdownDecoratorProps: DropDownDecoratorProps(
                  //         dropdownSearchDecoration: InputDecoration(
                  //             // hintText: "Choose",
                  //             // hintStyle: customTheme(Get.context!)
                  //             //     .regular
                  //             //     .copyWith(fontSize: 11, color: const Color(0xff929292)),
                  //             isDense: true,
                  //             border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(8),
                  //               borderSide: BorderSide.none,
                  //             ),
                  //             enabledBorder: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(8),
                  //               borderSide: BorderSide.none,
                  //             ),
                  //             focusedBorder: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(8),
                  //               borderSide: BorderSide.none,
                  //             ),
                  //             filled: true,
                  //             fillColor: Theme.of(context).extension<CustomTheme>()!.textFormFieldColor)),
                  //     items: const ["Kalamasseri", "Aluva", "Malappuram"],
                  //     // selectedItem: "",
                  //   ),
                  // ),
                  Text(
                    "Zone",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextField(
                    enabled: false,
                    initialvalue: controller.zoneName,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 8, bottom: 12),
                  //   child: Obx(() {
                  //     if (controller.isZoneListLoading.value) {
                  //       return circularProgressIndicator(context);
                  //     }
                  //     return DropdownSearch<zone.PoolList>(
                  //       dropdownBuilder: (context, selectedItem) => Text(
                  //         selectedItem?.name ?? "",
                  //         style: customTheme(Get.context!)
                  //             .regular
                  //             .copyWith(fontSize: 11, color: Colors.black),
                  //       ),
                  //       validator: (value) {
                  //         if (value?.name == null) {
                  //           return "Zone  can\'t be empty";
                  //         }
                  //         return null;
                  //       },
                  //       popupProps: const PopupProps.menu(
                  //         showSearchBox: true,
                  //         // showSelectedItems: true,
                  //       ),
                  //       dropdownDecoratorProps: DropDownDecoratorProps(
                  //           dropdownSearchDecoration: InputDecoration(
                  //               // hintText: "Choose",
                  //               // hintStyle: customTheme(Get.context!)
                  //               //     .regular
                  //               //     .copyWith(fontSize: 11, color: const Color(0xff929292)),
                  //               isDense: true,
                  //               border: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(8),
                  //                 borderSide: BorderSide.none,
                  //               ),
                  //               enabledBorder: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(8),
                  //                 borderSide: BorderSide.none,
                  //               ),
                  //               focusedBorder: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(8),
                  //                 borderSide: BorderSide.none,
                  //               ),
                  //               filled: true,
                  //               fillColor: Theme.of(context)
                  //                   .extension<CustomTheme>()!
                  //                   .textFormFieldColor)),
                  //       items: controller.zoneList,
                  //       itemAsString: (zone.PoolList? zoneList) =>
                  //           zoneList!.name!,
                  //       onChanged: (data) {
                  //         controller.selectedZone = data;
                  //       },
                  //       selectedItem: controller.selectedZone,
                  //     );
                  //   }),
                  // ),
                  RichText(
                      text: TextSpan(
                    text: "Route",
                    style: customTheme(context).regular.copyWith(fontSize: 12),
                    children: const <TextSpan>[
                      TextSpan(
                          text: '\*', style: TextStyle(color: Colors.blue)),
                    ],
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 12),
                    child: Obx(() {
                      if (controller.isRoutesListLoading.value) {
                        return circularProgressIndicator(context);
                      }
                      return DropdownSearch<route.RouteList>(
                        dropdownBuilder: (context, selectedItem) => Text(
                          selectedItem?.name ?? "",
                          style: customTheme(Get.context!)
                              .regular
                              .copyWith(fontSize: 11, color: Colors.black),
                        ),
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
                                // hintText: "Choose",
                                // hintStyle: customTheme(Get.context!)
                                //     .regular
                                //     .copyWith(fontSize: 11, color: const Color(0xff929292)),
                                isDense: true,
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
                        itemAsString: (route.RouteList? routeList) =>
                            routeList!.name!,
                        onChanged: (data) {
                          controller.selectedRoute = data;
                        },
                        selectedItem: controller.selectedRoute,
                      );
                    }),
                  ),
                  // RichText(
                  //     text: TextSpan(
                  //   text: 'Opening balance',
                  //   style: customTheme(context).regular.copyWith(fontSize: 12),
                  //   children: const <TextSpan>[
                  //     TextSpan(text: '  (mandatory only for existing shops)', style: TextStyle(color: Colors.black54, fontStyle: FontStyle.italic)),
                  //   ],
                  // )),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  // CustomTextField(
                  //   enabled: !(Get.arguments['isEdit'] ?? false),
                  //   textcontroller: controller.openingBalanceController,
                  // ),
                  const SizedBox(
                    height: 25,
                  ),
                  (Get.arguments['isEdit'] ?? false)
                      ? Obx(() {
                          return CustomButton(
                              onTap: () {
                                for (int i = 0;
                                    i <= controller.stateList.length - 1;
                                    i++) {
                                  if (controller.stateList[i].stateName ==
                                      "Kerala") {
                                    controller.selectedStateList =
                                        controller.stateList[i];
                                  }
                                }
                                if (controller.addShopFormKey.currentState!
                                    .validate()) {
                                  controller.updateShop(
                                    name: controller.name.text,
                                    district: controller.district.text,
                                    localArea: controller.localArea.text,
                                    phone: controller.phone.text,
                                    zip: controller.zip.text,
                                    customerType:
                                        controller.selectedRadio.value,
                                    shopCategoryId:
                                        controller.selectedCategory!.id!,
                                    latitude:
                                        controller.currentLocation!.latitude!,
                                    routeId: controller.selectedRoute!.id!,
                                    longitude:
                                        controller.currentLocation!.longitude!,
                                    gst: controller.gst.text,
                                    stateId:
                                        controller.selectedStateList!.stateId!,
                                    zoneId: controller.zoneId!,
                                    salesPersonId: SharedPrefs.getUserId()!,
                                    shopId:
                                        (Get.arguments['shop'] as ShopList).id!,
                                    lastName: controller.lastName.text,
                                  );
                                }
                              },
                              title: 'Update Shop',
                              isLoading:
                                  controller.isAddShopButtonPressed.value);
                        })
                      : Obx(() {
                          if (controller.isStateListLoading.value) {
                            circularProgressIndicator(context);
                          }
                          return CustomButton(
                              onTap: () {
                                for (int i = 0;
                                    i <= controller.stateList.length - 1;
                                    i++) {
                                  if (controller.stateList[i].stateName ==
                                      "Kerala") {
                                    controller.selectedStateList =
                                        controller.stateList[i];
                                  }
                                }
                                if (controller.addShopFormKey.currentState!
                                    .validate()) {
                                  controller.addShop(
                                    name: controller.name.text,
                                    district: controller.district.text,
                                    localArea: controller.localArea.text,
                                    phone: controller.phone.text,
                                    zip: controller.zip.text,
                                    customerType:
                                        controller.selectedRadio.value,
                                    shopCategoryId:
                                        controller.selectedCategory!.id!,
                                    routeId: controller.selectedRoute!.id!,
                                    gst: controller.gst.text,
                                    stateId:
                                        controller.selectedStateList!.stateId!,
                                    zoneId: controller.zoneId!,
                                    salesPersonId: SharedPrefs.getUserId()!,
                                    lastName: controller.lastName.text,
                                  );
                                }
                              },
                              title: 'Add Shop',
                              isLoading:
                                  controller.isAddShopButtonPressed.value);
                        })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
