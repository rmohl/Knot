import 'package:flutter/material.dart';

class Design {
  final String designName;
  final AssetImage previewPath;
  final AssetImage pixelPath;
  final AssetImage knotPath;
  bool isFavourite;
  List<PixelInfo> pixelGrid; // Array of PixelInfo objects

  Design({
    this.designName = "",
    required this.previewPath,
    required this.pixelPath,
    required this.knotPath,
    this.isFavourite = false,
    List<PixelInfo>? pixelGrid, // Nullable list
  }) : pixelGrid = List<PixelInfo>.generate(
    defaultSize,
        (index) => PixelInfo(color: Colors.white),
  );

// Default size for the pixelGrid list
  static const int defaultSize = 18;
}

class PixelInfo {
  Color color;

  PixelInfo({
    required this.color,
  });
}