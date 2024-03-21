import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:l10n_breeds/app/breeds_ui.dart';
import 'package:utils_breeds/utils/constant/colors.dart';
import 'package:utils_breeds/utils/helpers/text/xigo_text.dart';

class InternetConnectionWidget extends StatefulWidget {
  final Widget child;

  const InternetConnectionWidget({super.key, required this.child});

  @override
  State<InternetConnectionWidget> createState() =>
      _InternetConnectionWidgetState();
}

class _InternetConnectionWidgetState extends State<InternetConnectionWidget> {
  bool isDeviceConnected = true;

  @override
  void initState() {
    Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      InternetConnectionChecker().hasConnection.then((value) => setState(() {
            isDeviceConnected = value;
          }));
    });
    InternetConnectionChecker().hasConnection.then((value) => setState(() {
          isDeviceConnected = value;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Visibility(
          visible: !isDeviceConnected,
          child: SafeArea(
            child: Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              color: ProTiendasUiColors.aeroBlue,
              height: !isDeviceConnected ? 16.0 : 0.0,
              child: XigoTextMedium(
                BreedUiValues.noConection,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
