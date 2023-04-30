

import 'package:admin_580_tech/application/bloc/carousel/carousel_bloc.dart';
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/hover.dart';
import 'package:admin_580_tech/core/icons.dart';
import 'package:admin_580_tech/core/image.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

import '../../widget/already/svg_icon.dart';


class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final CarouselBloc _carouselBloc = CarouselBloc();
  // final CarouselController _withControlController = CarouselController();
  final CarouselController _withIndicatorController = CarouselController();
  final CarouselController _withCaptionsController = CarouselController();
  final List<String> _imageList = [Images.c1, Images.c2, Images.c3];

  final List<String> _captionList = [
    Strings.firstSlideLabel,
    Strings.secondSlideLabel,
    Strings.thirdSlideLabel,
  ];

  int _slideOnlyindex = 0;
  int _controlsIndex = 0;
  int _indicatorIndex = 0;
  int _captionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _carouselBloc,
      child: BlocBuilder<CarouselBloc, CarouselState>(
        builder: (context, state) {
          state.whenOrNull(
            pageChangeSuccess:
                (slideOnlyindex, controlsIndex, indicatorIndex, captionIndex) {
              _slideOnlyindex = slideOnlyindex;
              _controlsIndex = controlsIndex;
              _indicatorIndex = indicatorIndex;
              _captionIndex = captionIndex;
            },
          );
          return Column(
            children: [
              Responsive.isWeb(context)
                  ? Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: _slidesOnly()),
                      FxBox.w24,
                      Expanded(child: _withIndicators()),
                      FxBox.w24,
                      Expanded(child: _withCaptions())
                    ],
                  ),
                ],
              )
                  : Column(
                children: [
                  _slidesOnly(),
                  FxBox.h24,
                  _withIndicators(),
                  FxBox.h24,
                  _withCaptions(),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  Widget _commonView(String title, Widget carouselType) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _commonHeadText(title),
            FxBox.h24,
            carouselType,
          ],
        ),
      ),
    );
  }

  Widget _commonHeadText(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _slidesOnly() {
    return _commonView(
      Strings.carouselSlider,
      CarouselSlider(
        items: _imageList
            .map(
              (image) => Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        )
            .toList(),
        options: CarouselOptions(
          viewportFraction: 1.0,
          initialPage: _slideOnlyindex,
          onPageChanged: (index, reason) {
            _carouselBloc.add(
              CarouselEvent.pageChange(
                index,
                _controlsIndex,
                _indicatorIndex,
                _captionIndex,
              ),
            );
          },
        ),
      ),
    );
  }



  Widget _withIndicators() {
    return _commonView(
      Strings.carouselWithIndicators,
      Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            carouselController: _withIndicatorController,
            items: _imageList
                .map(
                  (image) => Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1.0,
              initialPage: _indicatorIndex,
              onPageChanged: (index, reason) {
                _carouselBloc.add(
                  CarouselEvent.pageChange(
                    _slideOnlyindex,
                    _controlsIndex,
                    index,
                    _captionIndex,
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 24,
            child: SizedBox(
              height: 3,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _imageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 30,
                    color: _indicatorIndex == index
                        ? ColorConst.white
                        : ColorConst.white.withOpacity(0.55),
                  );
                },
              ),
            ),
          ),
          _commonArrow(IconlyBroken.arrowRightRound, _withIndicatorController),
          _commonArrow(IconlyBroken.arrowLeftRound, _withIndicatorController),
        ],
      ),
    );
  }

  Widget _withCaptions() {
    return _commonView(
      Strings.carouselWithCaptions,
      Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
            carouselController: _withCaptionsController,
            itemCount: _imageList.length,
            itemBuilder: (context, index, realIndex) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    _imageList[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 32,
                    child: Text(
                      _captionList[index],
                      style: const TextStyle(
                        color: ColorConst.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              );
            },
            options: CarouselOptions(
              viewportFraction: 1.0,
              initialPage: _captionIndex,
              onPageChanged: (index, reason) {
                _carouselBloc.add(
                  CarouselEvent.pageChange(
                    _slideOnlyindex,
                    _controlsIndex,
                    _indicatorIndex,
                    index,
                  ),
                );
              },
            ),
          ),
          _commonArrow(IconlyBroken.arrowRightRound, _withCaptionsController),
          _commonArrow(IconlyBroken.arrowLeftRound, _withCaptionsController),
        ],
      ),
    );
  }

  Widget _commonArrow(String arrow, CarouselController controller) {
    return Positioned(
      right: arrow == IconlyBroken.arrowRightRound ? 12.0 : null,
      left: arrow == IconlyBroken.arrowLeftRound ? 12.0 : null,
      child: Align(
        alignment: Alignment.centerRight,
        child: FxHover(
          builder: (isHover) {
            return GestureDetector(
              onTap: () {
                arrow == IconlyBroken.arrowRightRound
                    ? controller.nextPage()
                    : controller.previousPage();
              },
              child: SvgIcon(
                icon: arrow,
                size: 32,
                color: isHover
                    ? ColorConst.white
                    : ColorConst.white.withOpacity(0.55),
              ),
            );
          },
        ),
      ),
    );
  }
}