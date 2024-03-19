part of '../btn.dart';

class _XigoBtnContrastIconSvg extends XigoBtnInterface {
  _XigoBtnContrastIconSvg({
    required super.labelColor,
    required super.labelFontWeight,
    required String super.svgUrl,
    required super.iconMargin,
    required super.showIconAtRight,
    required super.assetPackage,
    required super.svgColor,
    required super.svgSize,
  }) : super(
          buttonColor: ProTiendasUiColors.contrastColor,
          iconIsSvg: true,
          showIcon: true,
        );
}

class XigoBtnContrastIconSvg extends StatelessWidget {
  const XigoBtnContrastIconSvg({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    required this.svgUrl,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.assetPackage,
    this.svgColor,
    this.svgSize = 16,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final FontWeight? labelFontWeight;
  final String svgUrl;
  final double iconMargin;
  final bool showIconAtRight;
  final String? assetPackage;
  final Color? svgColor;
  final double svgSize;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _XigoBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _XigoBtnContrastIconSvg(
        labelColor: labelColor ?? ProTiendasUiColors.tertiaryColor,
        labelFontWeight: labelFontWeight,
        svgUrl: svgUrl,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        assetPackage: assetPackage,
        svgColor: svgColor,
        svgSize: svgSize,
      ),
    );
  }
}
