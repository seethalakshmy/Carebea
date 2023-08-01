import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ServiceDetailsPage extends StatelessWidget {
  const ServiceDetailsPage({Key? key, @QueryParam('id') this.id = ''})
      : super(key: key);

  final String? id;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
