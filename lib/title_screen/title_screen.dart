import 'package:flutter/material.dart';

import '../assets.dart';
import '../styles.dart'; // Add this import

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  final _finalReceiveLightAmt = 0.7; // Add this attribute
  final _finalEmitLightAmt = 0.5; // And this attribute

  @override
  Widget build(BuildContext context) {
    final orbColor = AppColors.orbColors[0]; // Add this final variable
    final emitColor = AppColors.emitColors[0]; // And this one

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            /// Bg-Base
            Image.asset(AssetPaths.titleBgBase),

            /// Bg-Receive
            _LitImage(
              // Modify from here...
              color: orbColor,
              imgSrc: AssetPaths.titleBgReceive,
              lightAmt: _finalReceiveLightAmt,
            ), // to here.

            /// Mg-Base
            _LitImage(
              // Modify from here...
              imgSrc: AssetPaths.titleMgBase,
              color: orbColor,
              lightAmt: _finalReceiveLightAmt,
            ), // to here.

            /// Mg-Receive
            _LitImage(
              // Modify from here...
              imgSrc: AssetPaths.titleMgReceive,
              color: orbColor,
              lightAmt: _finalReceiveLightAmt,
            ), // to here.

            /// Mg-Emit
            _LitImage(
              // Modify from here...
              imgSrc: AssetPaths.titleMgEmit,
              color: emitColor,
              lightAmt: _finalEmitLightAmt,
            ), // to here.

            /// Fg-Rocks
            Image.asset(AssetPaths.titleFgBase),

            /// Fg-Receive
            _LitImage(
              // Modify from here...
              imgSrc: AssetPaths.titleFgReceive,
              color: orbColor,
              lightAmt: _finalReceiveLightAmt,
            ), // to here.

            /// Fg-Emit
            _LitImage(
              // Modify from here...
              imgSrc: AssetPaths.titleFgEmit,
              color: emitColor,
              lightAmt: _finalEmitLightAmt,
            ), // to here.
          ],
        ),
      ),
    );
  }
}

class _LitImage extends StatelessWidget {
  // Add from here...
  const _LitImage({
    required this.color,
    required this.imgSrc,
    required this.lightAmt,
  });
  final Color color;
  final String imgSrc;
  final double lightAmt;

  @override
  Widget build(BuildContext context) {
    final hsl = HSLColor.fromColor(color);
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        hsl.withLightness(hsl.lightness * lightAmt).toColor(),
        BlendMode.modulate,
      ),
      child: Image.asset(imgSrc),
    );
  }
}                                                         // to here.
