import 'dart:developer';

import 'package:admin_580_tech/infrastructure/faq_creation/faq_creation_repository.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/send_gift/send_gift_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../domain/faq/models/faq_list_response_model.dart';
import '../../infrastructure/send_gift/send_gift_respository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/details_text_field_with_label.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';

@RoutePage()
class SendGiftPage extends StatefulWidget {
  const SendGiftPage({Key? key, @QueryParam('id') this.userId})
      : super(key: key);

  final String? userId;

  @override
  State<SendGiftPage> createState() => _sendGiftPageState();
}

class _sendGiftPageState extends State<SendGiftPage> {
  final FocusNode titleFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();
  String? userId;

  late SendGiftBloc _sendGiftBloc;

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _sendGiftFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    userId = autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    _sendGiftBloc = SendGiftBloc(SendGiftRepository());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreffUtil().init(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const LoaderView();
          }
          return Column(
            children: [
              HeaderView(title: AppString.sendGift.val),
              CustomSizedBox(height: DBL.ten.val),
              _rebuildView(),
            ],
          );
        });
  }

  _rebuildView() {
    return BlocProvider(
      create: (context) => _sendGiftBloc,
      child: BlocBuilder<SendGiftBloc, SendGiftState>(
        builder: (context, state) {
          return _bodyView(context, state);
        },
      ),
    );
  }

  _bodyView(BuildContext context, SendGiftState state) {
    return CustomPadding.symmetric(
      horizontal: DBL.sixteen.val,
      child: CustomCard(
        shape: PR().roundedRectangleBorder(DBL.five.val),
        elevation: DBL.seven.val,
        child: CustomContainer(
            padding: EdgeInsets.symmetric(
                horizontal: DBL.forty.val, vertical: DBL.eighteen.val),
            child: _createFaqView(state)),
      ),
    );
  }

  _createFaqView(SendGiftState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        CForm(
            formKey: _sendGiftFormKey,
            autoValidateMode: _validateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSizedBox(
                  width: DBL.twoEighty.val,
                  child: DetailsTextFieldWithLabel(
                    isMandatory: true,
                    maxLines: 20,
                    labelName: AppString.title.val,
                    focusNode: titleFocusNode,
                    controller: _sendGiftBloc.titleController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.titleError.val;
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    suffixIcon: const CustomContainer(width: 0),
                  ),
                ),
                CustomSizedBox(
                  width: DBL.twoEighty.val,
                  child: DetailsTextFieldWithLabel(
                    maxLines: 10,
                    isMandatory: true,
                    labelName: AppString.description.val,
                    focusNode: descriptionFocusNode,
                    controller: _sendGiftBloc.descriptionController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.descriptionError.val;
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.text,
                    suffixIcon: const CustomContainer(width: 0),
                  ),
                ),
                BlocBuilder<SendGiftBloc, SendGiftState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomButton(
                          isLoading: state.isLoadingButton,
                          height: DBL.fortyFive.val,
                          minWidth: DBL.oneTwenty.val,
                          onPressed: () async {
                            debugPrint("loading test ${state.isLoadingButton}");
                            await checkInputData(state);
                            debugPrint(
                                "loading test after function ${state.isLoadingButton}");
                          },
                          text: AppString.sendGift.val,
                          color: AppColor.primaryColor.val,
                          textColor: AppColor.white.val,
                        ),
                      ],
                    );
                  },
                )
              ],
            ))
      ],
    );
  }

  checkInputData(SendGiftState state) {
    if (_sendGiftFormKey.currentState!.validate()) {
      debugPrint("loading yes ${state.isLoadingButton}");
      _sendGiftBloc.add(SendGiftEvent.sendGift(
          context: context,
          userId: userId ?? '',
          title: _sendGiftBloc.titleController.text.trim(),
          description: _sendGiftBloc.descriptionController.text.trim()));
    }
  }

  @override
  void dispose() {
    _sendGiftBloc.titleController.dispose();
    _sendGiftBloc.descriptionController.dispose();

    super.dispose();
  }
}
