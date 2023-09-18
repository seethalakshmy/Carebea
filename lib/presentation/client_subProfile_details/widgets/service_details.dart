import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../application/bloc/sub_profile_details/sub_profile_details_bloc.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key, required this.state}) : super(key: key);
  final SubProfileDetailState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(AppString.basicServices.val,
              style: TextStyle(color: AppColor.primaryColor.val)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, // Replace with your desired item count
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CustomText(
                          'Item $index ',
                          style: TextStyle(fontSize: 16),
                        ),
                        index < 9
                            ? const Text(
                                ' | ',
                                style: TextStyle(color: Colors.grey),
                              )
                            : const SizedBox.shrink()
                      ],
                    );
                  },
                )),
          ),
          Divider(
            thickness: 2,
            color: AppColor.lightGrey.val,
          ),
          CustomText(
            AppString.specialServices.val,
            style: TextStyle(color: AppColor.primaryColor.val),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, // Replace with your desired item count
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CustomText(
                          'Item $index ',
                          style: TextStyle(fontSize: 16),
                        ),
                        index < 9
                            ? Text(
                                ' | ',
                                style: TextStyle(color: Colors.grey),
                              )
                            : SizedBox.shrink()
                      ],
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
