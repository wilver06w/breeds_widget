import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';
import 'package:utils_breeds/utils/constant/colors.dart';
import 'package:utils_breeds/utils/constant/navigation.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';
import 'package:utils_breeds/utils/helpers/text/text.dart';

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
  });

  final Widget icon;
  final VoidCallback? onTapIcon;
  final bool haveSearch;
  final String title;
  final bool havCart;
  final bool havIconLeft;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 65,
      backgroundColor: ProTiendasUiColors.primaryColor,
      title: Center(
        child: haveSearch
            ? Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: const Border(
                    left: BorderSide(
                      color: ProTiendasUiColors.secondaryColor,
                      width: 3,
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(ProTiendaSpacing.sl),
                child: XigoTextMedium(
                  BreedUiValues.searchCatbreeds,
                ))
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
          const Gap(ProTiendaSpacing.md),
        ]
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
