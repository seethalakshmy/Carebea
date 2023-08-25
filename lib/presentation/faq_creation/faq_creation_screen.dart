import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:admin_580_tech/infrastructure/admin_creation/admin_creation_repository.dart';
import 'package:admin_580_tech/infrastructure/faq_creation/faq_creation_repository.dart';
import 'package:admin_580_tech/presentation/admin_creation/widgets/admin_profile_pic.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/admin_creation/admin_creation_bloc.dart';
import '../../application/bloc/faq-creation/faq_creation_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/api_service_s3.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../on_boarding/modules/personal_details/widgets/mobile_number_formatter.dart';
import '../on_boarding/modules/personal_details/widgets/profile_picture_widget.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_shimmer.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/details_text_field_with_label.dart';
import '../widget/header_view.dart';

@RoutePage()
class FaqCreationPage extends StatefulWidget {
  const FaqCreationPage(
      {Key? key,
      @QueryParam('view') this.isView,
      @QueryParam('edit') this.isEdit,
      @QueryParam('id') this.id})
      : super(key: key);

  /// To do change :- change these two variables to bool for now getting error like " NoSuchMethodError: 'toLowerCase"  when extracting using auto-route
  final String? isView;
  final String? isEdit;
  final String? id;

  @override
  State<FaqCreationPage> createState() => _faqCreationPageState();
}

class _faqCreationPageState extends State<FaqCreationPage> {
  final TextEditingController question = TextEditingController();
  final TextEditingController answer = TextEditingController();

  final FocusNode questionFocusNode = FocusNode();
  final FocusNode answerFocusNode = FocusNode();

  late FaqCreationBloc _faqCreationBloc;

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  String adminUserID = "";
  String adminId = "";

  bool? _isView;

  bool? _isEdit;

  @override
  void initState() {
    super.initState();
    _faqCreationBloc = FaqCreationBloc(FaqCreationRepository());
    adminUserID = SharedPreffUtil().getAdminId;
    adminId =
        autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    if (autoTabRouter!.currentChild!.queryParams
        .getString('view', "")
        .isNotEmpty) {
      _isView = true;
    } else {
      _isView = false;
    }
    if (autoTabRouter!.currentChild!.queryParams
        .getString('edit', "")
        .isNotEmpty) {
      _isEdit = true;
    } else {
      _isEdit = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(
          title: AppString.faqCreation.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
        _rebuildView(),
      ],
    );
  }

  _rebuildView() {
    return BlocProvider(
      create: (context) => FaqCreationBloc(FaqCreationRepository()),
      child: BlocBuilder<FaqCreationBloc, FaqCreationState>(
        builder: (context, state) {
          return _bodyView(context, state);
          // return !state.isLoading
          //     ? _bodyView(context, state)
          //     : const LoaderView();
        },
      ),
    );
  }

  _bodyView(BuildContext context, FaqCreationState state) {
    // if (state.viewResponse != null) {
    //   _questionController.text = state.viewResponse?.data?.firstName ?? "";
    //   _answerController.text = state.viewResponse?.data?.lastName ?? "";
    // }
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

  _createFaqView(FaqCreationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 20,
            runSpacing: 20,
            children: [
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: DetailsTextFieldWithLabel(
                  isIgnore: _isView!,
                  isMandatory: true,
                  labelName: AppString.question.val,
                  focusNode: questionFocusNode,
                  controller: question,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.questionError.val;
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
                  isIgnore: _isView!,
                  isMandatory: true,
                  labelName: AppString.answer.val,
                  focusNode: answerFocusNode,
                  controller: answer,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.answerError.val;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.text,
                  suffixIcon: const CustomContainer(width: 0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  adminId.isEmpty
                      ? CustomButton(
                          height: DBL.fortyFive.val,
                          minWidth: DBL.oneTwenty.val,
                          onPressed: () {
                            // context.router.navigate(const AdminsRoute());
                          },
                          text: AppString.cancel.val,
                          color: AppColor.white.val,
                          textColor: AppColor.primaryColor.val,
                          borderWidth: 1,
                        )
                      : CustomSizedBox.shrink(),
                  CustomSizedBox(width: DBL.twenty.val),
                  !_isView!
                      ? CustomButton(
                          isLoading: state.isLoadingButton,
                          height: DBL.fortyFive.val,
                          minWidth: DBL.oneTwenty.val,
                          onPressed: () async {
                            checkInputData(state);
                          },
                          text: _isEdit!
                              ? AppString.update.val
                              : AppString.save.val,
                          color: AppColor.primaryColor.val,
                          textColor: AppColor.white.val,
                        )
                      : CustomSizedBox.shrink(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  checkInputData(FaqCreationState state) {
    if (_formKey.currentState!.validate()) {
      print('id:: ${adminUserID}');
      if (_isEdit!) {
        _faqCreationBloc.add(FaqCreationEvent.updateFaq(
          userId: adminUserID,
          context: context,
          question: question.text.trim(),
          answer: answer.text.trim(),
        ));
      } else {
        _faqCreationBloc.add(FaqCreationEvent.addFaq(
          context: context,
          question: question.text.trim(),
          answer: answer.text.trim(),
        ));
      }
    }
  }

  @override
  void dispose() {
    question.dispose();
    answer.dispose();

    super.dispose();
  }
}
