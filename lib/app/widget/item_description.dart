import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:utils_breeds/utils/constant/colors.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';
import 'package:utils_breeds/utils/helpers/text/text.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        XigoTextMedium(
          title,
          color: ProTiendasUiColors.black,
        ),
        const Gap(ProTiendaSpacing.xs),
        Flexible(
          child: XigoTextMedium(
            description,
            color: ProTiendasUiColors.black,
            weight: FontWeight.bold,
            textOverflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
