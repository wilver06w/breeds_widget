import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';
import 'package:utils_breeds/utils/helpers/text/xigo_text.dart';

class BodyFooter extends StatelessWidget {
  const BodyFooter({
    super.key,
    required this.version,
  });

  final String version;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BreedSpacing.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            XigoTextLarge(
              BreedUiValues.textFooter,
              fontStyle: GoogleFonts.lato().fontStyle,
            ),
            XigoTextSmall(
              '${BreedUiValues.version} $version',
            ),
          ],
        ),
      ),
    );
  }
}
