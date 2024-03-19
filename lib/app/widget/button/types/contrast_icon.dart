part of '../btn.dart';

class _XigoBtnContrastIcon extends XigoBtnInterface {
  _XigoBtnContrastIcon({
    required super.labelColor,
    required super.labelFontWeight,
    required super.icon,
    required super.iconMargin,
    required super.showIconAtRight,
    required super.showShadow,
  }) : super(
          buttonColor: ProTiendasUiColors.contrastColor,
          showIcon: true,
        );
}

class XigoBtnContrastIcon extends StatelessWidget {
  const XigoBtnContrastIcon({
    super.key,
    required this.label,
    required this.onTap,
    this.btnSize = XigoBtnSize.sm,
    this.labelColor,
    this.labelFontWeight,
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
      btnType: _XigoBtnContrastIcon(
        labelColor: labelColor ?? ProTiendasUiColors.tertiaryColor,
        labelFontWeight: labelFontWeight,
        icon: icon,
        iconMargin: iconMargin,
        showIconAtRight: showIconAtRight,
        showShadow: showShadow,
      ),
    );
  }
}
