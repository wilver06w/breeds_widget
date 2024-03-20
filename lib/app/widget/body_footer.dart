import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';
import 'package:utils_breeds/utils/config/client_config.dart';
import 'package:utils_breeds/utils/constant/spacing.dart';
import 'package:utils_breeds/utils/helpers/text/text.dart';

class BodyFooter extends StatelessWidget {
  const BodyFooter({
    super.key,
    required this.app,
  });

  final AppConfig app;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ProTiendaSpacing.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            XigoText.labelText(
              label: BreedUiValues.textFooter,
              textStyle: GoogleFonts.lato(),
            ),
            XigoText.xSmall(
              label: '${BreedUiValues.version} ${app.version}',
            ),
          ],
        ),
      ),
    );
  }
}
