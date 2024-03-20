import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';
import 'package:utils_breeds/utils/constant/navigation.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';
import 'package:models_breeds/app/models/breed.dart';

class ViewBanner extends StatelessWidget {
  const ViewBanner({
    super.key,
    required this.size,
    required this.mobile,
    required this.onFuntion,
  });

  final Size size;
  final List<Breed> mobile;
  final Function(DetailParams) onFuntion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.18,
      child: CarouselSlider(
        options: CarouselOptions(
          disableCenter: true,
          aspectRatio: size.height * 0.5,
          autoPlay: true,
          viewportFraction: 0.9,
        ),
        items: mobile.map(
          (item) {
            return InkWell(
              onTap: () {
                onFuntion(
                  DetailParams(
                    breed: item,
                    id: item.id,
                    name: item.name,
                    image: item.referenceImageId ?? '',
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  right: BreedSpacing.md,
                ),
                child: Image.network(
                  BreedUiValues.imageUrlConcatec(
                    (item.referenceImageId ?? '').isNotEmpty
                        ? item.referenceImageId ?? ''
                        : BreedUiValues.imageCat,
                  ),
                  fit: BoxFit.fitWidth,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
