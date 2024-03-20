import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';

///Con este widget se puede representar el estado de una calificación
///en un formato de estrella.
///
///Este widget se usa en la pantalla de [BreedDetailScreen]
///para representar la calificación de la raza.
class StartItem extends StatelessWidget {
  const StartItem({
    super.key,
    required this.qualification,
  });

  final int qualification;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          5,
          (index) => Container(
            padding: const EdgeInsets.symmetric(
              horizontal: ProTiendaSpacing.xxs,
            ),
            child: index > qualification - 1
                ? SvgPicture.asset(
                    BreedUiValues.starEmpty,
                    height: 13,
                  )
                : SvgPicture.asset(
                    BreedUiValues.starFilled,
                    height: 13,
                  ),
          ),
        ),
      ],
    );
  }
}
