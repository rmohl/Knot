import 'package:flutter/material.dart';

class Design {
  final String designName;
  final AssetImage previewPath;
  final AssetImage pixelPath;
  final AssetImage knotPath;
  bool isFavourite;

  Design({
    this.designName = "",
    required this.previewPath,
    required this.pixelPath,
    required this.knotPath,
    this.isFavourite = false,
  });
}