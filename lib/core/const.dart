import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

TabsRouter? autoTabRouter;
TabsRouter? autoecTabRouter;
int routesLength = 0;
bool isLg(context) =>
    MediaQuery.of(context).size.width >= 992 &&
    MediaQuery.of(context).size.width < 1355;

bool isXl(context) => MediaQuery.of(context).size.width >= 1300;
