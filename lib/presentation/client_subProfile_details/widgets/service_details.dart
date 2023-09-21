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
                  itemCount: state.response?.data?.services?.tier1
                      ?.length, // Replace with your desired item count
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CustomText(
                          state.response?.data?.services?.tier1?[index].name ??
                              '',
                          style: TextStyle(fontSize: 16),
                        ),
                        index <
                                (state.response?.data?.services?.tier1
                                            ?.length ??
                                        1) -
                                    1
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
                  itemCount: state.response?.data?.services?.tier2
                      ?.length, // Replace with your desired item count
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CustomText(
                          state.response?.data?.services?.tier2?[index].name ??
                              '',
                          style: TextStyle(fontSize: 16),
                        ),
                        index <
                                (state.response?.data?.services?.tier2
                                            ?.length ??
                                        1) -
                                    1
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
