part of '../btn.dart';

class _XigoBtnSecondaryIcon extends XigoBtnInterface {
  _XigoBtnSecondaryIcon({
    required super.labelColor,
    required super.labelFontWeight,
    required super.icon,
    required super.iconColor,
    required super.iconMargin,
    required super.showIconAtRight,
    required super.showShadow,
  }) : super(
          buttonColor: Colors.transparent,
          showIcon: true,
        );
}

class XigoBtnSecondaryIcon extends StatelessWidget {
  const XigoBtnSecondaryIcon({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.md,
    this.labelColor,
    this.labelFontWeight,
    this.iconColor,
    this.icon = Icons.arrow_forward,
    this.iconMargin = 3.0,
    this.showIconAtRight = true,
    this.showShadow = true,
    this.borderRadius,
  });
  final String label;
  final VoidCallback? onTap;
  final BtnSize btnSize;
  final Color? labelColor;
  final Color? iconColor;
  final FontWeight? labelFontWeight;
  final IconData icon;
  final double iconMargin;
  final bool showIconAtRight;
  final bool showShadow;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return _XigoBtnGeneric(
      label: label,
      onTap: onTap,
      btnSize: btnSize,
      borderRadius: borderRadius,
      btnType: _XigoBtnSecondaryIcon(
        labelColor: labelColor ?? ProTiendasUiColors.primaryColor,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconMargin: iconMargin,
        iconColor: iconColor,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
      ),
    );
  }
}
