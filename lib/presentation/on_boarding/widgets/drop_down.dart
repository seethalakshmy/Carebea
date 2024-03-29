import 'package:admin_580_tech/infrastructure/on_boarding/on_boarding_repository.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_text_field.dart';

class DropdownWidget<T> extends StatefulWidget {
  /// the child widget for the button, this will be ignored if text is supplied
  final Widget child;

  /// onChange is called when the selected option is changed.;
  /// It will pass back the value and the index of the option.
  final void Function(T, int) onChange;

  /// list of DropdownItems
  final List<DropdownItem<T>> items;
  final DropdownStyle dropdownStyle;

  /// dropdownButtonStyles passes styles to OutlineButton.styleFrom()
  final DropdownButtonStyle dropdownButtonStyle;

  /// dropdown button icon defaults to caret
  final Icon? icon;
  final bool hideIcon;

  /// if true the dropdown icon will as a leading icon, default to false
  final bool leadingIcon;
  final bool showDropDown;

  final double? width;
  final String? hint;
  final String? errorText;
  final T? selectedValue;
  final Function? onSearchChanged;
  final TextEditingController? searchController;
  final bool showSearchBox;
  final ScrollController? scrollController;

  DropdownWidget({
    Key? key,
    this.hideIcon = false,
    required this.child,
    required this.items,
    this.dropdownStyle = const DropdownStyle(),
    this.dropdownButtonStyle = const DropdownButtonStyle(),
    this.icon,
    this.leadingIcon = false,
    required this.onChange,
    this.width,
    this.hint,
    this.errorText,
    this.selectedValue,
    this.onSearchChanged,
    this.searchController,
    required this.showSearchBox,
    this.scrollController,
    this.showDropDown = true,
  }) : super(key: key);

  @override
  _DropdownWidgetState<T> createState() => _DropdownWidgetState<T>();
}

class _DropdownWidgetState<T> extends State<DropdownWidget<T>>
    with TickerProviderStateMixin {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool _isOpen = false;
  int _currentIndex = -1;
  AnimationController? _animationController;
  Animation<double>? _expandAnimation;
  Animation<double>? _rotateAnimation;

  Color borderColor = AppColor.borderColor.val;

  @override
  void initState() {
    super.initState();
    if (widget.selectedValue != null) {
      _currentIndex = widget.items
          .indexWhere((element) => element.value == widget.selectedValue);
    }

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _expandAnimation = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeInOut,
    );
    _rotateAnimation = Tween(begin: 0.0, end: 0.5).animate(CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    var style = widget.dropdownButtonStyle;
    // link the overlay to the button
    return BlocProvider(
      create: (context) => OnboardingBloc(OnBoardingRepository()),
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CompositedTransformTarget(
                link: this._layerLink,
                child: InkWell(
                  onTap: _toggleDropdown,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                            color: (widget.errorText != null &&
                                    widget.errorText!.isNotEmpty)
                                ? AppColor.red.val
                                : borderColor,
                            width: 1)),
                    height: DBL.fortyEight.val,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: widget.leadingIcon
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        if (_currentIndex == -1) ...[
                          widget.child,
                        ] else ...[
                          Text(
                            _isOpen
                                ? ""
                                : widget.items[_currentIndex].value.toString(),
                            style: const TextStyle(color: Colors.black),
                          )
                        ],
                        if (!widget.hideIcon) const Spacer(),
                        if (!widget.hideIcon)
                          RotationTransition(
                            turns: _rotateAnimation!,
                            child: widget.icon ??
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: AppColor.darkBlue.val,
                                ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              CustomText(
                widget.errorText ?? "",
                style: TS()
                    .gPoppins(fontSize: FS.font11.val, color: AppColor.red.val),
              ),
            ],
          );
        },
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    var size = renderBox!.size;
    var offset = renderBox.localToGlobal(Offset.zero);
    var topOffset = offset.dy + (size.height) + 5;
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => _toggleDropdown(close: true),
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                left: offset.dx,
                top: topOffset,
                width: widget.dropdownStyle.width ?? size.width,
                child: CompositedTransformFollower(
                  offset: widget.dropdownStyle.offset ??
                      Offset(0, size.height - 30),
                  link: this._layerLink,
                  showWhenUnlinked: false,
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    child: SizeTransition(
                      axisAlignment: 1,
                      sizeFactor: _expandAnimation!,
                      child: ConstrainedBox(
                        constraints: widget.dropdownStyle.constraints ??
                            BoxConstraints(
                              maxHeight: MediaQuery.of(context).size.height -
                                          topOffset -
                                          15 >
                                      30
                                  ? MediaQuery.of(context).size.height -
                                      topOffset -
                                      15
                                  : 400,
                            ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          //color: Colors.white,
                          constraints: BoxConstraints(maxHeight: 400),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              widget.showSearchBox
                                  ? CTextField(
                                      onChanged: (val) {
                                        widget.onSearchChanged!(val);
                                      },
                                      controller: widget.searchController,
                                      suffixIcon: Icon(
                                        Icons.search,
                                        color: AppColor.lightGrey3.val,
                                        size: 25,
                                      ))
                                  : Container(),
                              Flexible(
                                flex: 3,
                                child: ListView(
                                  controller: widget.scrollController,
                                  padding: widget.dropdownStyle.padding ??
                                      EdgeInsets.zero,
                                  shrinkWrap: true,
                                  children:
                                      widget.items.asMap().entries.map((item) {
                                    return InkWell(
                                      // hoverColor: AppColors.textGrey,
                                      onTap: () {
                                        setState(
                                            () => _currentIndex = item.key);
                                        widget.onChange(
                                            item.value.value!, item.key);
                                        _toggleDropdown();
                                      },
                                      child: item.value,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleDropdown({bool close = false}) async {
    if (widget.showDropDown) {
      if (_isOpen || close) {
        await _animationController!.reverse();
        this._overlayEntry!.remove();
        setState(() {
          _isOpen = false;
          // borderColor = AppColor.textGray4;
        });
      } else {
        this._overlayEntry = this._createOverlayEntry();
        Overlay.of(context).insert(this._overlayEntry!);
        setState(() {
          _isOpen = true;
          // borderColor = AppColor.primaryColor;
        });
        _animationController!.forward();
      }
    }
  }
}

/// DropdownItem is just a wrapper for each child in the dropdown list.\n
/// It holds the value of the item.
class DropdownItem<T> extends StatelessWidget {
  final T? value;
  final Widget child;

  const DropdownItem({Key? key, this.value, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class DropdownButtonStyle {
  final MainAxisAlignment? mainAxisAlignment;
  final ShapeBorder? shape;
  final double? elevation;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final BoxConstraints? constraints;
  final double? width;
  final double? height;
  final Color? primaryColor;

  const DropdownButtonStyle({
    this.mainAxisAlignment,
    this.backgroundColor,
    this.primaryColor,
    this.constraints,
    this.height,
    this.width,
    this.elevation,
    this.padding,
    this.shape,
  });
}

class DropdownStyle {
  final BorderRadius? borderRadius;
  final double? elevation;
  final Color? color;
  final EdgeInsets? padding;
  final BoxConstraints? constraints;

  /// position of the top left of the dropdown relative to the top left of the button
  final Offset? offset;

  ///button width must be set for this to take effect
  final double? width;

  const DropdownStyle({
    this.constraints,
    this.offset,
    this.width,
    this.elevation,
    this.color,
    this.padding,
    this.borderRadius,
  });
}
