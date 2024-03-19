part of '../btn.dart';

class _XigoBtnOutline extends XigoBtnInterface {
  _XigoBtnOutline({
    required super.labelColor,
    required super.labelFontWeight,
    required super.borderColor,
  }) : super(
          buttonColor: Colors.transparent,
          hasBorder: true,
        );
}

class XigoBtnOutline extends StatelessWidget {
  const XigoBtnOutline({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.borderColor,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _XigoBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _XigoBtnOutline(
        labelColor: labelColor ?? ProTiendasUiColors.primaryColor,
        labelFontWeight: labelFontWeight,
        borderColor: borderColor ?? ProTiendasUiColors.primaryColor,
      ),
    );
  }
}
