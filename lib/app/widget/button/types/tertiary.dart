part of '../btn.dart';

class _XigoBtnTertiary extends XigoBtnInterface {
  _XigoBtnTertiary({
    required super.labelFontWeight,
    required super.showShadow,
    required super.labelColor,
  }) : super(
          buttonColor: ProTiendasUiColors.tertiaryColor,
        );
}

class XigoBtnTertiary extends StatelessWidget {
  const XigoBtnTertiary({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
    this.labelColor,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return _XigoBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _XigoBtnTertiary(
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
        labelColor: labelColor ?? ProTiendasUiColors.primaryColor,
      ),
    );
  }
}
