import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/custom_sizedbox.dart';

class SampleDropdown extends StatefulWidget {
  SampleDropdown({super.key, required this.isFromLangauge});
  final bool isFromLangauge;

  @override
  State<SampleDropdown> createState() => _SampleDropdownState();
}

class _SampleDropdownState extends State<SampleDropdown> {
  List<Map<String, dynamic>> items = [
    {'name': 'Cat', 'type': 'indoor'},
    {'name': 'Dog', 'type': 'indoor'},
    {'name': 'Iguana', 'type': 'indoor'},
    {'name': 'Python', 'type': 'outdoor'},
    {'name': 'Parrot', 'type': 'indoor'},
    {'name': 'Rabbit', 'type': 'indoor'},
    {'name': 'Horse', 'type': 'indoor'},
  ];
  List<Map<String, dynamic>> languages = [
    {'name': 'English', 'type': ''},
    {'name': 'Hindi', 'type': ''},
    {'name': 'French', 'type': ''},
    {'name': 'German', 'type': ''},
    {'name': 'Spanish', 'type': ''},
    {'name': 'Others', 'type': ''},
  ];

  List<Map<String, dynamic>> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Wrap(
                  runSpacing: 5.0,
                  spacing: 8.0,
                  children: generateSelectedItemsList()),
            ],
          ),
          CustomSizedBox(height: DBL.ten.val),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () => openDropdown(context),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.borderColor.val),
                    borderRadius: BorderRadius.circular(10)),
                width: DBL.twoEighty.val,
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      AppString.select.val,
                      style: TS().gRoboto(
                          fontSize: FS.font16.val,
                          fontWeight: FW.w400.val,
                          color: AppColor.label.val),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  void openDropdown(BuildContext context) {
    showDialog(
      barrierColor: AppColor.transparent.val,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              elevation: 10,
              shadowColor: Colors.black,
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              content: CustomSizedBox(
                width: 400, // Set a specific width for the container
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(
                        runSpacing: 5.0,
                        spacing: 8.0,
                        children: generateSelectedItemsList(),
                      ),
                      CustomSizedBox(height: DBL.sixteen.val),
                      Container(
                        color: AppColor.offWhite.val,
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Search...',
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none),
                        ),
                      ),
                      CustomSizedBox(height: DBL.sixteen.val),
                      ListView.separated(
                        separatorBuilder: (context, index) {
                          return CustomContainer(
                            height: DBL.one.val,
                            color: AppColor.lightGrey.val,
                          );
                        },
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: widget.isFromLangauge
                            ? languages.length
                            : items.length,
                        itemBuilder: (context, index) {
                          final item = widget.isFromLangauge
                              ? languages[index]
                              : items[index];
                          bool isSelected = selectedItems.contains(item);

                          return ListTile(
                            titleAlignment: ListTileTitleAlignment.center,
                            leading: Checkbox(
                              value: selectedItems.contains(item),
                              onChanged: (value) {
                                setState(() {
                                  if (isSelected) {
                                    selectedItems.removeWhere((item) =>
                                        item['name'] == items[index]['name']);
                                  } else {
                                    selectedItems.add(items[index]);
                                  }
                                });
                              },
                            ),
                            title: CustomText(
                              item['name'],
                              style: TS().gRoboto(
                                  color: AppColor.primaryColor.val,
                                  fontSize: FS.font16.val,
                                  fontWeight: FW.w400.val),
                            ),
                            trailing: widget.isFromLangauge
                                ? Container(width: 230)
                                : CustomContainer(
                                    width: 230.0,
                                    child: ButtonBar(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              item['type'] = 'indoor';
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: AppColor.amber2.val,
                                              ),
                                              color: item['type'] == 'indoor'
                                                  ? AppColor.indoor.val
                                                  : AppColor.white.val,
                                            ),
                                            child: CustomText(
                                              AppString.inDoor.val,
                                              style: TS().gRoboto(
                                                  fontSize: FS.font13.val,
                                                  fontWeight: FW.w400.val),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              item['type'] = 'outdoor';
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 70,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: AppColor.red1.val,
                                              ),
                                              color: item['type'] == 'outdoor'
                                                  ? AppColor.outdoor.val
                                                  : AppColor.white.val,
                                            ),
                                            child: CustomText(
                                              AppString.outDoor.val,
                                              style: TS().gRoboto(
                                                  fontSize: FS.font13.val,
                                                  fontWeight: FW.w400.val),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            tileColor: isSelected ? Colors.grey[200] : null,
                            onTap: () {
                              setState(() {
                                if (isSelected) {
                                  selectedItems.remove(item);
                                } else {
                                  if (!selectedItems.contains(item)) {
                                    selectedItems.add(item);
                                  }
                                }
                              });
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                CustomButton(
                  text: AppString.ok.val,
                  onPressed: () {
                    Navigator.of(context).pop(selectedItems);
                  },
                ),
              ],
            );
          },
        );
      },
    ).then((value) {
      setState(() {
        if (value != null) {
          selectedItems = List<Map<String, dynamic>>.from(value);
        }
      });
    });
  }

  List<Widget> generateSelectedItemsList() {
    return List<Widget>.generate(selectedItems.length, (index) {
      final item = selectedItems[index];

      return Container(
        width: 90,
        height: 30,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: item['type'] == 'indoor'
                ? AppColor.amber2.val
                : AppColor.red1.val,
          ),
          color: item['type'] == 'indoor'
              ? AppColor.indoor.val
              : AppColor.outdoor.val,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              item['name'],
              style: const TextStyle(fontSize: 13),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                setState(() {
                  selectedItems.remove(item);
                });
              },
              child: Container(
                width: 15,
                height: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                ),
                child: const Icon(
                  Icons.close,
                  size: 11,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
