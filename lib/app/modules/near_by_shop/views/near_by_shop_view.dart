import 'package:carebea/app/core/helper.dart';
import 'package:carebea/app/modules/near_by_shop/models/remark_model.dart';
import 'package:carebea/app/utils/assets.dart';
import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:carebea/app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../utils/widgets/custom_button.dart';
import '../../../utils/widgets/custom_card.dart';
import '../../remark_history/controllers/remark_history_controller.dart';
import '../controllers/near_by_shop_controller.dart';

class NearByShops extends StatelessWidget {
  NearByShops({Key? key}) : super(key: key);
  final RemarkHistoryController remarkHistoryController =
      Get.put(RemarkHistoryController());
  final NearByShopsController controller = Get.put(NearByShopsController());
  var focusNode = FocusNode();

  RxInt tabIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 17,
                    ),
                  ),
                  Text(
                    'Near By Shops',
                    style: customTheme(context)
                        .medium
                        .copyWith(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                    textcontroller: controller.searchEditingController,
                    key: const ValueKey("search"),
                    inputType: TextInputType.visiblePassword,
                    // controller.selectedSearchtype.value.type == "phone"
                    //     ? TextInputType.visiblePassword
                    //     : TextInputType.phone,
                    focusNode: focusNode,
                    onChanged: (val) {
                      controller.searchShop(val);
                      controller.searchTerm.value =
                          controller.searchEditingController.text;
                      debugPrint(
                          "searched value ${controller.searchEditingController.text}");
                    },
                    hint: 'Search for shops',
                    fillcolor: customTheme(context).textFormFieldColor,
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                    trailing: Obx(() {
                      return controller.searchTerm.isEmpty
                          ? DropdownButton<String>(
                              hint: Text(
                                "Choose",
                                style: customTheme(Get.context!)
                                    .regular
                                    .copyWith(
                                        fontSize: 11,
                                        color: const Color(0xff929292)),
                              ),
                              value: controller.selectedSearchtype.value.type ??
                                  "",
                              underline: const SizedBox.shrink(),
                              isDense: true,
                              onChanged: (value) {
                                focusNode.requestFocus();
                                controller.selectedSearchtype(
                                    controller.searchitems.singleWhere(
                                        (element) => element.type == value));
                                debugPrint(
                                    "search type ${controller.selectedSearchtype.value.type}");
                              },
                              items: controller.searchitems
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e.type,
                                      child: Text(e.title!,
                                          style: customTheme(Get.context!)
                                              .regular
                                              .copyWith(
                                                  fontSize: 11,
                                                  color: Colors.black)),
                                    ),
                                  )
                                  .toList(),
                            )
                          : InkWell(
                              onTap: () {
                                controller.searchTerm.value = "";
                                controller.searchEditingController.clear();
                                controller.fetchNearByShops(
                                    latitude: controller.latitude!,
                                    longitude: controller.longitude!);
                              },
                              child: const Icon(
                                Icons.close,
                                size: 20,
                              ),
                            );
                    }),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Obx(() {
                  if (controller.searchEditingController.text == "") {
                    debugPrint("inside empty");
                    if (controller.isNearByShopLoading.value) {
                      return Center(child: circularProgressIndicator(context));
                    }
                    if (controller.nearByShopList.isEmpty) {
                      return Container(
                          alignment: Alignment.topCenter,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 50),
                          child: const Text("No shops found!"));
                    }
                    return buildNearByShopClick();
                  } else if (controller.searchEditingController.text != "") {
                    debugPrint("outside empty");

                    if (controller.isLoading.value) {
                      debugPrint("outside empty");

                      return Center(child: circularProgressIndicator(context));
                    }
                    if (controller.shopList.isEmpty) {
                      return Container(
                          alignment: Alignment.topCenter,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 50),
                          child: const Text("No shops found!"));
                    }

                    return buildSearchShopClick();
                  } else {
                    return Container(
                      color: Colors.red,
                    );
                  }
                }),
              ),
            ],
          ),
        ));
  }

  ListView buildNearByShopClick() {
    return ListView.separated(
        controller: controller.scrollController,
        separatorBuilder: (_, __) => const SizedBox(height: 20),
        shrinkWrap: true,
        itemCount: controller.nearByShopList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              debugPrint("index tab ${controller.tabController?.index}");
              remarkHistoryController.shopId =
                  controller.nearByShopList[index].id!;
              remarkHistoryController.fetchRemarkHistory(
                  shopId: controller.nearByShopList[index].id!);
              showDialog(
                context: context,
                builder: (ctx) => Material(
                  type: MaterialType.transparency,
                  color: Colors.transparent,
                  child: Center(
                    child: CustomCard(
                      padding: const EdgeInsets.all(20),
                      width: Get.size.width * .8,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TabBar(
                            onTap: (index) {
                              tabIndex.value =
                                  controller.tabController?.index ?? 0;
                              debugPrint("print index $tabIndex");
                            },
                            controller: controller.tabController,
                            tabs: <Tab>[
                              Tab(
                                child: Text(
                                  "Remarks",
                                  style: customTheme(context)
                                      .medium
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "History",
                                  style: customTheme(context)
                                      .medium
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          Obx(() {
                            return SizedBox(
                              height: tabIndex.value == 1
                                  ? MediaQuery.of(context).size.height * .7
                                  : MediaQuery.of(context).size.height * .2,
                              child: TabBarView(
                                  controller: controller.tabController,
                                  children: [
                                    Obx(() {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            DropdownButton<PaymentCommentsList>(
                                              hint: Text(
                                                controller.selectedReason.value,
                                                style: customTheme(Get.context!)
                                                    .regular
                                                    .copyWith(
                                                        fontSize: 11,
                                                        color: const Color(
                                                            0xff929292)),
                                              ),
                                              underline:
                                                  const SizedBox.shrink(),
                                              isDense: true,
                                              onChanged: (value) {
                                                // _focusNode.requestFocus();
                                                controller.selectedReason(
                                                    value?.name ?? "");
                                                controller.selectedReasonId(
                                                    (value?.id ?? 0).toInt());
                                              },
                                              items: controller.remarkList
                                                  ?.map(
                                                    (e) => DropdownMenuItem(
                                                      value: e,
                                                      child: controller
                                                              .isRemarksLoading
                                                              .value
                                                          ? CircularProgressIndicator()
                                                          : Text(e.name ?? "",
                                                              style: customTheme(Get
                                                                      .context!)
                                                                  .regular
                                                                  .copyWith(
                                                                      fontSize:
                                                                          11,
                                                                      color: Colors
                                                                          .black)),
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                            const Spacer(),
                                            Obx(() {
                                              return CustomButton(
                                                  isLoading: controller
                                                      .isRemarksSubmitLoading
                                                      .value,
                                                  title: "Confirm",
                                                  onTap: () {
                                                    debugPrint(
                                                        "near shop reason ${controller.selectedReason.value}");
                                                    debugPrint(
                                                        "near shop reason ${controller.selectedReasonId.value}");
                                                    FocusScope.of(context)
                                                        .requestFocus(
                                                            FocusNode());
                                                    if (controller
                                                                .selectedReason
                                                                .value !=
                                                            "choose" &&
                                                        controller
                                                                .selectedReasonId
                                                                .value !=
                                                            0) {
                                                      controller.submitRemarks(
                                                          commentId: controller
                                                              .selectedReasonId
                                                              .value,
                                                          shopId: controller
                                                                  .nearByShopList[
                                                                      index]
                                                                  .id ??
                                                              0);

                                                      Get.back();
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              Get.context!)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      "Please select a remark")));
                                                    }
                                                  });
                                            })
                                          ],
                                        ),
                                      );
                                    }),
                                    Obx(() {
                                      if (remarkHistoryController
                                          .isLoading.value) {
                                        return Center(
                                            child: circularProgressIndicator(
                                                context));
                                      }

                                      return Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: SingleChildScrollView(
                                            controller: remarkHistoryController
                                                .scrollController,
                                            child: SizedBox(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  remarkHistoryController
                                                          .remarkHistory
                                                          .isNotEmpty
                                                      ? ListView.separated(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder: (_,
                                                                  __) =>
                                                              const SizedBox(
                                                                  height: 16),
                                                          // physics: const NeverScrollableScrollPhysics(),
                                                          itemCount:
                                                              remarkHistoryController
                                                                  .remarkHistory
                                                                  .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return ColoredBox(
                                                              color: Colors.grey
                                                                  .shade200,
                                                              child: ListTile(
                                                                title: Text(
                                                                  remarkHistoryController
                                                                          .remarkHistory[
                                                                              index]
                                                                          .commentName ??
                                                                      "",
                                                                  style: customTheme(
                                                                          context)
                                                                      .medium
                                                                      .copyWith(
                                                                          fontSize:
                                                                              12),
                                                                ),
                                                                subtitle: Row(
                                                                  children: [
                                                                    Flexible(
                                                                      flex: 6,
                                                                      child:
                                                                          Text(
                                                                        DateFormat('dd/MMM/yyyy h:mm a')
                                                                            .format(DateTime.parse(
                                                                          remarkHistoryController.remarkHistory[index].createDate ??
                                                                              "",
                                                                        )),
                                                                      ),
                                                                    ),
                                                                    const Spacer(),
                                                                    Flexible(
                                                                      flex: 2,
                                                                      child:
                                                                          Text(
                                                                        remarkHistoryController.remarkHistory[index].createdUserName ??
                                                                            "",
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          })
                                                      : Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            "No Remarks Found",
                                                            style: customTheme(
                                                                    context)
                                                                .medium
                                                                .copyWith(
                                                                    fontSize:
                                                                        12),
                                                          ))
                                                ],
                                              ),
                                            ),
                                          ));
                                    })
                                  ]),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: CustomCard(
              hasShadow: false,
              color: const Color(0xfffff1f1),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                  top: 16, bottom: 12, left: 13, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${controller.nearByShopList[index].name!} ${controller.nearByShopList[index].lastName}",
                    // 'Trinity Shop',
                    style: customTheme(context).medium.copyWith(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.assetsLocationFilled,
                        scale: 3,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          getFullAddress(
                              controller.nearByShopList[index].address),
                          style: customTheme(context)
                              .regular
                              .copyWith(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  if ((controller.nearByShopList[index].phone ?? "").isNotEmpty)
                    Row(
                      children: [
                        Image.asset(
                          Assets.assetsPhone,
                          scale: 3,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "+91 ${controller.nearByShopList[index].phone!}",
                          // '+91 6398541236',
                          style: customTheme(context)
                              .regular
                              .copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        });
  }

  ListView buildSearchShopClick() {
    return ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(height: 20),
        shrinkWrap: true,
        itemCount: controller.shopList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              remarkHistoryController.shopId = controller.shopList[index].id!;
              remarkHistoryController.fetchRemarkHistory(
                  shopId: controller.shopList[index].id!);
              showDialog(
                context: context,
                builder: (ctx) => Material(
                  type: MaterialType.transparency,
                  color: Colors.transparent,
                  child: Center(
                    child: CustomCard(
                      padding: const EdgeInsets.all(20),
                      width: Get.size.width * .8,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TabBar(
                            onTap: (index) {
                              tabIndex.value =
                                  controller.tabController?.index ?? 0;
                              debugPrint(
                                  "print index inside searchShop $tabIndex");
                            },
                            controller: controller.tabController,
                            tabs: <Tab>[
                              Tab(
                                child: Text(
                                  "Remarks",
                                  style: customTheme(context)
                                      .medium
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "History",
                                  style: customTheme(context)
                                      .medium
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          Obx(() {
                            return SizedBox(
                              height: tabIndex.value == 0
                                  ? MediaQuery.of(context).size.height * .2
                                  : MediaQuery.of(context).size.height * .7,
                              child: TabBarView(
                                  controller: controller.tabController,
                                  children: [
                                    Obx(() {
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            DropdownButton<PaymentCommentsList>(
                                              hint: Text(
                                                controller.selectedReason.value,
                                                style: customTheme(Get.context!)
                                                    .regular
                                                    .copyWith(
                                                        fontSize: 11,
                                                        color: const Color(
                                                            0xff929292)),
                                              ),
                                              // value: controller.selectedSearchtype.value,
                                              underline:
                                                  const SizedBox.shrink(),
                                              isDense: true,
                                              onChanged: (value) {
                                                // _focusNode.requestFocus();
                                                controller.selectedReason(
                                                    value?.name ?? "");
                                                controller.selectedReasonId(
                                                    (value?.id ?? 0).toInt());
                                              },
                                              items: controller.remarkList
                                                  ?.map(
                                                    (e) => DropdownMenuItem(
                                                      value: e,
                                                      child: controller
                                                              .isRemarksLoading
                                                              .value
                                                          ? CircularProgressIndicator()
                                                          : Text(e.name ?? "",
                                                              style: customTheme(Get
                                                                      .context!)
                                                                  .regular
                                                                  .copyWith(
                                                                      fontSize:
                                                                          11,
                                                                      color: Colors
                                                                          .black)),
                                                    ),
                                                  )
                                                  .toList(),
                                            ),
                                            Spacer(),
                                            Obx(() {
                                              return CustomButton(
                                                  isLoading: controller
                                                      .isRemarksSubmitLoading
                                                      .value,
                                                  title: "Confirm",
                                                  onTap: () {
                                                    FocusScope.of(context)
                                                        .requestFocus(
                                                            FocusNode());
                                                    if (controller
                                                                .selectedReason
                                                                .value !=
                                                            "choose" &&
                                                        controller
                                                                .selectedReasonId
                                                                .value !=
                                                            0) {
                                                      controller.submitRemarks(
                                                          commentId: controller
                                                              .selectedReasonId
                                                              .value,
                                                          shopId: controller
                                                                  .shopList[
                                                                      index]
                                                                  .id ??
                                                              0);

                                                      Get.back();
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              Get.context!)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      "Please select a remark")));
                                                    }
                                                  });
                                            })
                                          ],
                                        ),
                                      );
                                    }),
                                    Obx(() {
                                      if (remarkHistoryController
                                          .isLoading.value) {
                                        return Center(
                                            child: circularProgressIndicator(
                                                context));
                                      }

                                      return Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: SingleChildScrollView(
                                            controller: remarkHistoryController
                                                .scrollController,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                remarkHistoryController
                                                        .remarkHistory
                                                        .isNotEmpty
                                                    ? ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder: (_,
                                                                __) =>
                                                            const SizedBox(
                                                                height: 16),
                                                        // physics: const NeverScrollableScrollPhysics(),
                                                        itemCount:
                                                            remarkHistoryController
                                                                .remarkHistory
                                                                .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return ColoredBox(
                                                            color: Colors
                                                                .grey.shade200,
                                                            child: ListTile(
                                                              title: Text(
                                                                remarkHistoryController
                                                                        .remarkHistory[
                                                                            index]
                                                                        .commentName ??
                                                                    "",
                                                                style: customTheme(
                                                                        context)
                                                                    .medium
                                                                    .copyWith(
                                                                        fontSize:
                                                                            12),
                                                              ),
                                                              subtitle: Row(
                                                                children: [
                                                                  Flexible(
                                                                    flex: 6,
                                                                    child: Text(
                                                                      DateFormat(
                                                                              'dd/MMM/yyyy h:mm a')
                                                                          .format(
                                                                              DateTime.parse(
                                                                        remarkHistoryController.remarkHistory[index].createDate ??
                                                                            "",
                                                                      )),
                                                                    ),
                                                                  ),
                                                                  const Spacer(),
                                                                  Flexible(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      remarkHistoryController
                                                                              .remarkHistory[index]
                                                                              .createdUserName ??
                                                                          "",
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        })
                                                    : Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "No Remarks Found",
                                                          style: customTheme(
                                                                  context)
                                                              .medium
                                                              .copyWith(
                                                                  fontSize: 12),
                                                        ))
                                              ],
                                            ),
                                          ));
                                    })
                                  ]),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: CustomCard(
              hasShadow: false,
              color: const Color(0xfffff1f1),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                  top: 16, bottom: 12, left: 13, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${controller.shopList[index].name!} ${controller.shopList[index].lastName}",
                    // 'Trinity Shop',
                    style: customTheme(context).medium.copyWith(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Assets.assetsLocationFilled,
                        scale: 3,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          getFullAddress(controller.shopList[index].address),
                          style: customTheme(context)
                              .regular
                              .copyWith(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  if ((controller.shopList[index].phone ?? "").isNotEmpty)
                    Row(
                      children: [
                        Image.asset(
                          Assets.assetsPhone,
                          scale: 3,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "+91 ${controller.shopList[index].phone!}",
                          // '+91 6398541236',
                          style: customTheme(context)
                              .regular
                              .copyWith(fontSize: 11),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        });
  }
}
