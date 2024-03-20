import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:utils_breeds/utils/constant/colors.dart';
import 'package:utils_breeds/utils/constant/navigation.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';
import 'package:utils_breeds/utils/helpers/text/xigo_text.dart';

class AppBarGlobal extends StatelessWidget implements PreferredSizeWidget {
  const AppBarGlobal({
    super.key,
    this.icon = const Icon(
      Icons.arrow_back_ios_new_outlined,
      color: ProTiendasUiColors.secondaryColor,
      size: 20,
    ),
    this.onTapIcon,
    this.haveSearch = true,
    this.title = '',
    this.havCart = true,
    this.havIconLeft = true,
    this.onChanged,
    this.textEditingController,
    this.widgetSearch,
    this.havHeart = false,
    this.widgetHeart = const SizedBox.shrink(),
  });

  final Widget icon;
  final VoidCallback? onTapIcon;
  final bool haveSearch;
  final String title;
  final Widget? widgetSearch;
  final bool havCart;
  final bool havHeart;
  final Widget widgetHeart;
  final bool havIconLeft;
  final Function(String)? onChanged;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: ProTiendasUiColors.primaryColor,
      title: Center(
        child: haveSearch
            ? widgetSearch
            : XigoTextLarge(
                title,
                color: ProTiendasUiColors.white,
                weight: FontWeight.w300,
              ),
      ),
      actions: [
        if (havCart) ...[
          InkWell(
            onTap: () {
              ProTiendasRoute.navCart();
            },
            child: const Icon(
              Icons.favorite_border,
              color: ProTiendasUiColors.secondaryColor,
            ),
          ),
          const Gap(BreedSpacing.md),
        ],
        if (havHeart) ...[widgetHeart],
      ],
      leading: havIconLeft
          ? InkWell(
              onTap: onTapIcon,
              child: icon,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
