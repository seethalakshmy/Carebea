import 'package:admin_580_tech/application/support_tickets_detail/support_tickets_detail_bloc.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_tickets_response.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../caregiver_detail/widgets/svg_text.dart';
import '../widget/cached_image.dart';
import '../widget/custom_padding.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/loader_view.dart';
import '../widget/row_combo.dart';

@RoutePage()
class SupportTicketsDetailPage extends StatefulWidget {
  const SupportTicketsDetailPage({Key? key}) : super(key: key);

  @override
  State<SupportTicketsDetailPage> createState() =>
      _SupportTicketsDetailPageState();
}

class _SupportTicketsDetailPageState extends State<SupportTicketsDetailPage> {
  String userId = "6461c0f33ba4fd69bd494df0";
  late SupportTicketsDetailBloc _supportTicketsDetailBloc;

  @override
  void initState() {
    // userId = autoTabRouter?.currentChild?.queryParams.getString('id', '') ?? "";
    // tabController = TabController(vsync: this, length: 5);
    // _caregiverDetailBloc = CaregiverDetailBloc(CareGiverDetailRepository());
    // _supportTicketsDetailBloc = SupportTicketsDetailBloc(SupportTicketsDetailBloc());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _reBuildView();
  }

  BlocProvider<SupportTicketsDetailBloc> _reBuildView() {
    return BlocProvider(
      create: (context) => _supportTicketsDetailBloc
        ..add(SupportTicketsDetailEvent.getSupportTickets(
            userId: userId, page: 1, limit: 1)),
      child: _bodyView(),
    );
  }

  // _rebuildView() {
  //   return BlocBuilder<SupportTicketsDetailBloc, SupportTicketsDetailState>(
  //     builder: (context, state) {
  //       return state.isLoading
  //           ? (const LoaderView())
  //           : state.isError
  //           ? ErrorView(
  //           isClientError: state.isClientError,
  //           errorMessage: state.error)
  //           : _bodyView(state);
  //     },
  //
  //   );
  // }

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
                    child: _topLeftView(
                      context,
                      // response
                    ),
                    flex: 1,
                  ),
                  const CustomSizedBox(
                    width: 25,
                  ),
                  Flexible(
                    child: _topRightView(context
                        // response
                        ),
                    flex: 2,
                  ),
                ],
              ),
            ),
            Expanded(child: _bottomView(context)),
            // CustomSizedBox(height: isXs2(context)?DBL.eight.val:DBL.zero.val,),
          ]),
        ));
  }

  CustomSizedBox _topRightView(
    BuildContext context,
    // SupportTicketsResponse response
  ) {
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
            "Jhon Miller",
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
            name: "abc@gmail.com",
            widthGap: DBL.twelve.val,
          ),
          CustomSizedBox(
            height: DBL.fourteen.val,
          ),
          SVGText(
            path: IMG.phone.val,
            name: "1212121234",
            widthGap: DBL.nine.val,
          ),
        ],
      ),
    );
  }

  _profileImageView(BuildContext context, String url) {
    return CachedImage(
      imgUrl: url,
      height: DBL.oneSeventyFive.val,
      width: DBL.twoHundred.val,
      isDetailPage: true,
    );
  }

  CustomSizedBox _topLeftView(
    BuildContext context,
    // SupportTicketsResponse response
  ) {
    return CustomSizedBox(
      width: isXs(context) ? DBL.oneFifty.val : DBL.twoHundred.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _profileImageView(context, ""),
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
            value: "Service",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.createdDate.val,
            value: "11/04/2023",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.title.val,
            value: "issue",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.description.val,
            value: "Lorem lipsum lorem lipsum lorem",
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
