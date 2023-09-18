import 'package:admin_580_tech/infrastructure/complaint_details/complaint_details_repository.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/complaint_details/complaint_detail_bloc.dart';
import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../caregiver_detail/widgets/svg_text.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_padding.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/loader_view.dart';
import '../widget/row_combo.dart';

@RoutePage()
class SupportTicketsDetailPage extends StatefulWidget {
  const SupportTicketsDetailPage(
      {Key? key, @QueryParam('complaint_id') this.complaintId})
      : super(key: key);
  final String? complaintId;

  @override
  State<SupportTicketsDetailPage> createState() =>
      _SupportTicketsDetailPageState();
}

class _SupportTicketsDetailPageState extends State<SupportTicketsDetailPage> {
  late ComplaintDetailBloc _complaintDetailBloc;
  String compId = '';

  @override
  void initState() {
    // userId = autoTabRouter?.currentChild?.queryParams.getString('id', '') ?? "";
    // tabController = TabController(vsync: this, length: 5);
    // _caregiverDetailBloc = CaregiverDetailBloc(CareGiverDetailRepository());
    _complaintDetailBloc = ComplaintDetailBloc(ComplaintDetailsRepository());
    compId = autoTabRouter?.currentChild?.queryParams
            .getString("complaint_id", "") ??
        "";
    _complaintDetailBloc
        .add(ComplaintDetailEvent.getComplaintDetails(complaintId: compId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _reBuildView();
  }

  BlocProvider<ComplaintDetailBloc> _reBuildView() {
    print("_rebuild view called");
    return BlocProvider(
      create: (context) => _complaintDetailBloc
        ..add(ComplaintDetailEvent.getComplaintDetails(complaintId: compId)),
      child: _rebuildView(),
    );
  }

  _rebuildView() {
    return BlocBuilder<ComplaintDetailBloc, ComplaintDetailState>(
      builder: (context, state) {
        return state.isLoading
            ? (const LoaderView())
            : state.isError
                ? ErrorView(isClientError: false, errorMessage: state.error)
                : _bodyView();
      },
    );
  }

  _bodyView() {
    // CustomLog.log(
    //     'width :${MediaQuery.of(context).size.width} ${state.response}');
    // SupportTicketsResponse? response = state.response!;
    return CustomSizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  leading: const SizedBox(),
                  backgroundColor: Colors.white,
                  expandedHeight: MediaQuery.of(context).size.height,
                  // expandedHeight: isXs2(context)
                  //     ? DBL.threeEighty.val
                  //     : isLg2(context)
                  //         ? DBL.fourHundred.val
                  //         : DBL.threeFifteen.val,
                  floating: false,
                  toolbarHeight: DBL.fifty.val,
                  flexibleSpace: _flexibleSpaceBar(
                    context,
                    // response
                  ))
            ];
          },
          body: Container(),
          // body: _bodyTabs(state),
        ),
      ),
    );
  }

  FlexibleSpaceBar _flexibleSpaceBar(
    BuildContext context,
    // SupportTicketsResponse response
  ) {
    return FlexibleSpaceBar(
        centerTitle: true,
        background: CustomPadding.only(
          left: DBL.twentyFive.val,
          top: DBL.thirty.val,
          right: DBL.twenty.val,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomSizedBox(
              height: isXs2(context)
                  ? DBL.twoFiftyFive.val
                  : isLg2(context)
                      ? DBL.twoFiftyFive.val
                      : DBL.twoEighty.val,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: _topLeftView(
                      context,
                      // response
                    ),
                  ),
                  const CustomSizedBox(
                    width: 25,
                  ),
                  Flexible(
                    flex: 2,
                    child: _topRightView(context),
                  ),
                ],
              ),
            ),
            Expanded(child: _bottomView(context)),
            // CustomSizedBox(height: isXs2(context)?DBL.eight.val:DBL.zero.val,),
          ]),
        ));
  }

  CustomSizedBox _topRightView(BuildContext context) {
    // Location? location = response.data?.location;
    return CustomSizedBox(
      width: isXs3(context)
          ? MediaQuery.of(context).size.width - DBL.twoThirty.val
          : isXs2(context)
              ? MediaQuery.of(context).size.width - DBL.fourSeventy.val
              : isXs(context)
                  ? MediaQuery.of(context).size.width - DBL.fiveTwenty.val
                  : isLg2(context)
                      ? MediaQuery.of(context).size.width - DBL.fiveTwenty.val
                      : isLg3(context)
                          ? MediaQuery.of(context).size.width -
                              DBL.eightSixtyFive.val
                          : MediaQuery.of(context).size.width -
                              DBL.nineFifty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            _complaintDetailBloc.complaintDetailsList[0].userName ?? "",
            // "${response.data?.name?.firstName} ${response.data?.name?.lastName}",
            style: TS().gRoboto(
              color: AppColor.rowColor.val,
              fontWeight: FW.w600.val,
              fontSize: getFontSize(
                context,
                fontSize: FS.font19.val,
              ),
            ),
          ),
          CustomSizedBox(
            height: DBL.fourteen.val,
          ),
          SVGText(
            path: IMG.email.val,
            name: _complaintDetailBloc.complaintDetailsList[0].email ?? "",
            widthGap: DBL.twelve.val,
          ),
          CustomSizedBox(
            height: DBL.fourteen.val,
          ),
          SVGText(
            path: IMG.phone.val,
            name:
                _complaintDetailBloc.complaintDetailsList[0].phoneNumber ?? "",
            widthGap: DBL.nine.val,
          ),
        ],
      ),
    );
  }

  _profileImageView(BuildContext context, String url) {
    return CachedImage(
      onTap: () {
        showGeneralDialog(
          context: context,
          pageBuilder: (BuildContext buildContext, Animation animation,
              Animation secondaryAnimation) {
            return CustomAlertDialogWidget(
                showHeading: false,
                width: 700,
                heading: "",
                child: CachedImage(
                  fit: BoxFit.contain,
                  imgUrl: url,
                ));
          },
        );
      },
      imgUrl: url,
      height: DBL.oneSeventyFive.val,
      width: DBL.twoHundred.val,
      isDetailPage: true,
    );
  }

  CustomSizedBox _topLeftView(BuildContext context) {
    print(
        "image url : ${_complaintDetailBloc.complaintDetailsList[0].userPicture}");
    return CustomSizedBox(
      width: isXs(context) ? DBL.oneFifty.val : DBL.twoHundred.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _profileImageView(context,
              _complaintDetailBloc.complaintDetailsList[0].userPicture ?? ""),
          CustomSizedBox(
            height: isLg2(context) ? DBL.fourteen.val : DBL.twenty.val,
          ),
        ],
      ),
    );
  }

  Column _bottomView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(
          height: DBL.six.val,
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.category.val,
            value: _complaintDetailBloc.complaintDetailsList[0].category ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.createdDate.val,
            value:
                _complaintDetailBloc.complaintDetailsList[0].createdDate ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.title.val,
            value: _complaintDetailBloc.complaintDetailsList[0].title ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.description.val,
            value: "description is not given",
            fontSize: FS.font13PointFive.val),
      ],
    );
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1096;

  bool isLg3(context) => MediaQuery.of(context).size.width <= 1385;

  bool isXs(context) => MediaQuery.of(context).size.width <= 990;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 930;

  bool isXs3(context) => MediaQuery.of(context).size.width <= 805;

  bool isXs4(context) => MediaQuery.of(context).size.width <= 590;
}
