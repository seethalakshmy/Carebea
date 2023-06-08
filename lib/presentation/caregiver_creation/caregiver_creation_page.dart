import 'package:admin_580_tech/application/bloc/caregiver_creation/caregiver_creation_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/bloc/caregivers/caregivers_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/string.dart';
import '../../core/text_styles.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';

class CaregiverCreationPage extends StatefulWidget {
  const CaregiverCreationPage({Key? key}) : super(key: key);

  @override
  State<CaregiverCreationPage> createState() => _CaregiverCreationPageState();
}

class _CaregiverCreationPageState extends State<CaregiverCreationPage> {
  late CaregiverCreationBloc _creationBloc;

  @override
  void initState() {
    super.initState();
    _creationBloc = CaregiverCreationBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(
          title: AppString.createNew.val,
        ),
        CustomSizedBox(height: DBL.twenty.val),
        BlocProvider(
          create: (context) => _creationBloc,
          child: _bodyView(),
        ),
      ],
    );
  }

  CustomCard _bodyView() {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<CareGiversBloc, CareGiversState>(
          builder: (context, state) {
            return state.isLoading
                ? loaderView()
                : state.isError
                    ? ErrorView(isClientError: false, errorMessage: state.error)
                    : _createCaregiverView();
          },
        ),
      ),
    );
  }

  loaderView() {
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText3(
                Strings.recent.trim(),
                style: TS().style(
                  fontSize: FS.font18.val,
                  fontWeight: FW.bold.val,
                ),
              ),
              CustomSizedBox(height: DBL.ten.val),
              CustomSizedBox(
                  height: 950,
                  child: Shimmer.fromColors(
                    // baseColor: Colors.grey[400]!,
                    // highlightColor: Colors.grey[300]!,
                    baseColor: AppColor.rowBackgroundColor.val,
                    highlightColor: AppColor.rowBackgroundColor.val,
                    child: Container(),
                  ))
            ]));
  }

  _createCaregiverView() {
    return Container();
  }
}
