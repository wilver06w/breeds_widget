part of '../btn.dart';

class _XigoBtnDangerSecondary extends XigoBtnInterface {
  _XigoBtnDangerSecondary({
    required super.labelFontWeight,
    required super.labelColor,
  }) : super(
          buttonColor: Colors.transparent,
          showShadow: false,
        );
}

class XigoBtnDangerSecondary extends StatelessWidget {
  const XigoBtnDangerSecondary({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _XigoBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _XigoBtnDangerSecondary(
        labelColor: labelColor ?? ProTiendasUiColors.dangerColor,
        labelFontWeight: labelFontWeight,
      ),
    );
  }
}
