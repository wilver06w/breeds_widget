import 'package:breeds_widget/app/widget/card_favorite/bloc/bloc.dart';
import 'package:breeds_widget/app/widget/imagen_widget.dart';
import 'package:breeds_widget/app/widget/item_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:utils_breeds/utils/constant/colors.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';
import 'package:utils_breeds/utils/helpers/text/xigo_text.dart';

class CardProductCart extends StatelessWidget {
  const CardProductCart({
    super.key,
    required this.image,
    required this.title,
    required this.priceBefore,
    required this.price,
    required this.titleFeatures,
    required this.descriptionFeature,
    required this.quantity,
    this.widthImage = 150,
    this.heightImage = 120,
  });
  final String image;
  final String title;
  final String priceBefore;
  final String price;
  final String titleFeatures;
  final String descriptionFeature;

  final double widthImage;
  final double heightImage;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocCardFavorite(quantity: quantity),
      child: BlocListener<BlocCardFavorite, CardFavoriteState>(
        listener: (context, state) {
          if (state is ChangedQuantityState) {}
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          padding: const EdgeInsets.all(BreedSpacing.md),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: ProTiendasUiColors.lightSilver,
                        width: 1,
                      ),
                    ),
                    child: Hero(
                      tag: image,
                      child: ImagenWidget(
                        image: image,
                        height: heightImage,
                        width: widthImage,
                      ),
                    ),
                  ),
                  const Gap(BreedSpacing.sl),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      XigoTextMedium(
                        title,
                        color: ProTiendasUiColors.primaryColor,
                        weight: FontWeight.w600,
                      ),
                      const Gap(BreedSpacing.sm),
                      XigoTextMedium(
                        price,
                        color: ProTiendasUiColors.primaryColor,
                        weight: FontWeight.w500,
                      ),
                      const Gap(BreedSpacing.sm),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemDescription(
                            title: titleFeatures,
                            description: descriptionFeature,
                          ),
                          const Gap(BreedSpacing.xl),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  BreedUiValues.icDelete,
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
