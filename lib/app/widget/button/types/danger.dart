part of '../btn.dart';

class _XigoBtnDanger extends XigoBtnInterface {
  _XigoBtnDanger({
    required super.labelFontWeight,
    required super.showShadow,
    required super.labelColor,
  }) : super(
          buttonColor: ProTiendasUiColors.dangerColor,
        );
}

class XigoBtnDanger extends StatelessWidget {
  const XigoBtnDanger({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.showShadow = true,
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
      btnType: _XigoBtnDanger(
        labelColor: labelColor ?? ProTiendasUiColors.white,
        labelFontWeight: labelFontWeight,
        showShadow: showShadow,
      ),
    );
  }
}
