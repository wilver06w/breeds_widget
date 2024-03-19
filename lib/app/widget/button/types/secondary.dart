part of '../btn.dart';

class _XigoBtnSecondary extends XigoBtnInterface {
  _XigoBtnSecondary({
    required super.labelFontWeight,
    required super.showShadow,
    required super.labelColor,
  }) : super(
          buttonColor: Colors.transparent,
        );
}

class XigoBtnSecondary extends StatelessWidget {
  const XigoBtnSecondary({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.showShadow = false,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _XigoBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _XigoBtnSecondary(
        labelColor: labelColor ?? ProTiendasUiColors.primaryColor,
        labelFontWeight: labelFontWeight ?? FontWeight.w600,
        showShadow: showShadow,
      ),
    );
  }
}
