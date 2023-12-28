import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/ground_screen/models/ground_model.dart';

/// A provider class for the GroundScreen.
///
/// This provider manages the state of the GroundScreen, including the
/// current groundModelObj

// ignore_for_file: must_be_immutable
class GroundProvider extends ChangeNotifier {
  GroundModel groundModelObj = GroundModel();

  @override
  void dispose() {
    super.dispose();
  }
}
