import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.thumbsUpIcon,
    this.rotiText,
    this.nipponIndosariText,
    this.eightThousandSixHundredText,
    this.fiftyThousandThreeHundredTwent,
    this.id,
  }) {
    thumbsUpIcon = thumbsUpIcon ?? Rx(ImageConstant.imgThumbsUp);
    rotiText = rotiText ?? Rx("ROTI");
    nipponIndosariText = nipponIndosariText ?? Rx("Nippon Indosari Tbk");
    eightThousandSixHundredText = eightThousandSixHundredText ?? Rx("8,600");
    fiftyThousandThreeHundredTwent =
        fiftyThousandThreeHundredTwent ?? Rx("+50 (+3.23%)");
    id = id ?? Rx("");
  }

  Rx<String>? thumbsUpIcon;

  Rx<String>? rotiText;

  Rx<String>? nipponIndosariText;

  Rx<String>? eightThousandSixHundredText;

  Rx<String>? fiftyThousandThreeHundredTwent;

  Rx<String>? id;
}
