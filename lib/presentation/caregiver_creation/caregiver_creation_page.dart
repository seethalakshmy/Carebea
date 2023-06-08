import 'package:admin_580_tech/application/bloc/caregiver_creation/caregiver_creation_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/caregivers/caregivers_bloc.dart';
import '../../core/enum.dart';
import '../widget/custom_sizedbox.dart';
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
          child: Container(),
        ),
      ],
    );
    ;
  }
}
