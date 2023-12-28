import 'package:flutter/material.dart';
import 'package:main_app/core/app_export.dart';
import 'package:main_app/presentation/rewards_screen/models/rewards_model.dart';
import '../models/userprofilesection_item_model.dart';

/// A provider class for the RewardsScreen.
///
/// This provider manages the state of the RewardsScreen, including the
/// current rewardsModelObj

// ignore_for_file: must_be_immutable
class RewardsProvider extends ChangeNotifier {
  RewardsModel rewardsModelObj = RewardsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
