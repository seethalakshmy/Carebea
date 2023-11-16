import 'package:admin_580_tech/application/bloc/user_management_detail/user_management_detail_bloc.dart';
import 'package:admin_580_tech/core/utility.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/client_service_response.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/infrastructure/user_management_detail/user_management_detail_repository.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/service_details_popUp.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/service_status.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../../infrastructure/service_request_management/service_request_management_repository.dart';
import '../../../main.dart';
import '../../service_request_management/widgets/service_details_alert.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_padding.dart';
import '../../widget/custom_rating_bar.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';

class ServiceView extends StatefulWidget {
  ServiceView({
    Key? key,
    required this.state,
    required this.userId,
  }) : super(key: key);
  final UserManagementDetailState state;
  String userId;

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  late UserManagementDetailBloc userDetailBloc;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    userDetailBloc = UserManagementDetailBloc(UserManagementDetailRepository());

    return BlocProvider(
      create: (context) => userDetailBloc
        ..add(UserManagementDetailEvent.getClientService(
            userId: widget.userId, adminId: SharedPreffUtil().getAdminId)),
      child: BlocBuilder<UserManagementDetailBloc, UserManagementDetailState>(
        builder: (context, state) {
          final services = state.clientServiceResponse?.data?.services ?? [];
          // context.read<ServiceRequestManagementBloc>().add(ServiceRequestManagementEvent.getServiceDetails(context: context, serviceId: ));

          print('service $services');

          return CustomCard(
            elevation: DBL.seven.val,
            child: CustomContainer(
                child: state.isLoading
                    ? const TableLoaderView()
                    : state.isError
                        ? ErrorView(
                            isClientError: false, errorMessage: state.error)
                        : services.isNotEmpty
                            ? CustomPadding.only(
                                left: DBL.twenty.val,
                                right: DBL.nineteen.val,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      CustomSizedBox(
                                        height: DBL.four.val,
                                      ),
                                      CustomSizedBox(
                                          height: (10 + 1) * 48,
                                          child:
                                              _serviceTable(services, context)),
                                      CustomSizedBox(height: DBL.twenty.val),
                                    ],
                                  ),
                                ),
                              )
                            : EmptyView(title: AppString.noServices.val)),
          );
        },
      ),
    );
  }

  _serviceTable(List<ClientServices> services, BuildContext context) {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: 950,
        dividerThickness: .3,
        headingRowHeight: 48,
        dataRowHeight: 60,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: 80,
            label: _columnsView(context,
                text: AppString.slNo.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.serviceId.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.careRecipientName.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.careAmbassador.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.startDateAndTime.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.endDateAndTime.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.serviceFee.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.tip.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.reviewFromClient.val,
                fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.status.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context, text: '', fontWeight: FontWeight.bold),
          ),
        ],
        rows: services.asMap().entries.map((e) {
          getIndex(e.key);
          var item = e.value;
          return DataRow2(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  context.read<ServiceRequestManagementBloc>().add(
                      ServiceRequestManagementEvent.getServiceDetails(
                          context: context, serviceId: item.id ?? ''));
                  debugPrint('item status ${item.status}');
                  return CustomAlertDialogWidget(
                    heading: AppString.services.val,
                    child: ServiceDetailsAlert(
                      title: item.status == 2
                          ? 'Upcoming'
                          : item.status == 3
                              ? 'Ongoing'
                              : item.status == 5
                                  ? 'Completed'
                                  : item.status == 6
                                      ? 'Canceled'
                                      : 'Missed',
                      serviceBloc: serviceRequestManagementBloc,
                    ),
                  );
                },
              );
            },
            cells: [
              DataCell(_rowsView(
                context,
                text: getIndex(e.key).toString(),
              )),
              DataCell(_rowsView(context, text: item.uniqueId)),
              DataCell(_tableRowImage(
                context,
                name: "${item.client?.firstName} ${item.client?.lastName}",
                imgUrl: item.client?.profilePic ?? "",
              )),
              DataCell(_tableRowImage(context,
                  name:
                      "${item.caregiver?.firstName} ${item.caregiver?.lastName}",
                  imgUrl: item.caregiver?.profilePic ?? "")),
              DataCell(_rowsView(context,
                  text: Utility.serviceDate(
                      DateTime.parse(item.startDateTime ?? '')))),
              DataCell(_rowsView(context,
                  text: Utility.serviceDate(
                      DateTime.parse(item.endDateTime ?? '')))),
              DataCell(_rowsView(context,
                  text:
                      '\$ ${Utility.formatAmount(double.tryParse(item.totalServiceFee.toString() ?? "0.0") ?? 0.0)}')),
              DataCell(_rowsView(context,
                  text:
                      '\$ ${Utility.formatAmount(double.tryParse(item.tip.toString() ?? "0.0") ?? 0.0)}')),
              DataCell(CustomRatingBar(
                rating: item.serviceRating ?? 0,
              )),
              DataCell(ClientStatusWidget(serviceStatus: item.status ?? 0)),
              DataCell(InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        context.read<ServiceRequestManagementBloc>().add(
                            ServiceRequestManagementEvent.getServiceDetails(
                                context: context, serviceId: item.id ?? ''));
                        debugPrint('item status ${item.status}');
                        return CustomAlertDialogWidget(
                          heading: AppString.services.val,
                          child: ServiceDetailsAlert(
                            title: item.status == 2
                                ? 'Upcoming'
                                : item.status == 3
                                    ? 'Ongoing'
                                    : item.status == 5
                                        ? 'Completed'
                                        : item.status == 6
                                            ? 'Canceled'
                                            : 'Missed',
                            serviceBloc: serviceRequestManagementBloc,
                          ),
                        );
                      },
                    );
                  },
                  child: CustomContainer(
                    alignment: Alignment.centerRight,
                    child: CustomSvg(
                      path: IMG.eye.val,
                      height: Responsive.isWeb(context)
                          ? DBL.fifteen.val
                          : DBL.twelve.val,
                      width: Responsive.isWeb(context)
                          ? DBL.twenty.val
                          : DBL.eighteen.val,
                    ),
                  ))),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _rowsView(
    BuildContext context, {
    String? text,
  }) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize: Responsive.isWeb(context)
              ? DBL.thirteenPointFive.val
              : DBL.twelve.val,
          fontWeight: FW.w400.val,
          color: AppColor.rowColor.val),
      textAlign: TextAlign.start,
    );
  }

  Widget _columnsView(BuildContext context,
      {String? text, FontWeight? fontWeight = FontWeight.w600}) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize:
              Responsive.isWeb(context) ? DBL.fourteen.val : DBL.twelve.val,
          fontWeight: fontWeight,
          color: AppColor.columColor.val),
      textAlign: TextAlign.center,
    );
  }

  Widget _tableRowImage(BuildContext context,
      {required String name, required String imgUrl}) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedImage(
              height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imgUrl),
        ),
        CustomSizedBox(width: DBL.twelve.val),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBox(
                height: DBL.ten.val,
              ),
              Expanded(
                flex: 1,
                child: CustomText(
                  name,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TS().gRoboto(
                      fontSize: Responsive.isWeb(context)
                          ? DBL.twelve.val
                          : DBL.ten.val,
                      fontWeight: FW.w400.val,
                      color: AppColor.rowColor.val),
                ),
              ),
              CustomSizedBox(
                height: DBL.three.val,
              ),
            ],
          ),
        ),
      ],
    );
  }

  int getIndex(int index) {
    return index + 1;
  }
}
