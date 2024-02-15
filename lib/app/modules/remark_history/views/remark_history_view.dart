import 'package:carebea/app/modules/remark_history/controllers/remark_history_controller.dart';
import 'package:carebea/app/utils/widgets/appbar.dart';
import 'package:carebea/app/utils/widgets/circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../utils/theme.dart';

class RemarkHistory extends StatelessWidget {
  RemarkHistory({Key? key}) : super(key: key);
  final RemarkHistoryController controller = Get.put(RemarkHistoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: Obx(() {
          if (controller.isLoading.value) {
            return Center(child: circularProgressIndicator(context));
          }

          return Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                controller: controller.scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Remark History',
                      style: customTheme(context)
                          .medium
                          .copyWith(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    controller.remarkHistory.isNotEmpty
                        ? ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 16),
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.remarkHistory.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                tileColor: Colors.grey[200],
                                title: Text(
                                  controller.remarkHistory[index].commentName ??
                                      "",
                                  style: customTheme(context)
                                      .medium
                                      .copyWith(fontSize: 14),
                                ),
                                trailing: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        DateFormat('dd/MM/yyyy h:mm a')
                                            .format(DateTime.parse(
                                          controller.remarkHistory[index]
                                                  .createDate ??
                                              "",
                                        )),
                                        style: customTheme(context)
                                            .medium
                                            .copyWith(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
                        : Align(
                            alignment: Alignment.center,
                            child: Text(
                              "No Remarks Found",
                              style: customTheme(context)
                                  .medium
                                  .copyWith(fontSize: 12),
                            ))
                  ],
                ),
              ));
        }));
  }
}
