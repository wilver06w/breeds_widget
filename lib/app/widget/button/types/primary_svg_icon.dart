part of '../btn.dart';

class _XigoBtnPrimarySvgIcon extends XigoBtnInterface {
  _XigoBtnPrimarySvgIcon({
    required super.labelColor,
    required super.labelFontWeight,
    required XigoIconData icon,
    required double iconSize,
    required super.showIconAtRight,
    required super.showShadow,
    Color? iconColor,
  }) : super(
          buttonColor: ProTiendasUiColors.primaryColor,
          showIcon: true,
          svgColor: iconColor,
          iconSvg: icon,
          svgSize: iconSize,
          iconIsSvg: true,
        );
}

class XigoBtnPrimarySvgIcon extends StatelessWidget {
  const XigoBtnPrimarySvgIcon({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.icon = XigoSvgIcons.alert,
    this.iconColor,
    this.iconMargin = 3.0,
    this.iconSize = 16,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.borderRadius,
    this.iconIsSvg = true,
  });

  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final Color? iconColor;
  final FontWeight? labelFontWeight;
  final XigoIconData icon;
  final double iconMargin;
  final double iconSize;
  final bool showIconAtRight;
  final bool showShadow;
  final bool iconIsSvg;

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _XigoBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _XigoBtnPrimarySvgIcon(
        labelColor: labelColor ?? ProTiendasUiColors.white,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconColor: iconColor,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
        iconSize: iconSize,
      ),
    );
  }
}
