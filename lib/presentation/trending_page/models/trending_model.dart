import 'package:main_app/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'stockinfo_item_model.dart';

/// This class defines the variables used in the [trending_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        thumbsUpIcon: ImageConstant.imgThumbsUp.obs,
        rotiText: "ROTI".obs,
        nipponIndosariText: "Nippon Indosari Tbk".obs,
        eightThousandSixHundredText: "8,600".obs,
        fiftyThousandThreeHundredTwent: "+50 (+3.23%)".obs),
    UserprofileItemModel(
        rotiText: "GOTO".obs,
        nipponIndosariText: "GoTo Gojek Tokopedia".obs,
        eightThousandSixHundredText: "2,421".obs,
        fiftyThousandThreeHundredTwent: "-121 (-20,6%)".obs),
    UserprofileItemModel(
        rotiText: "ABNB".obs,
        nipponIndosariText: "Airbnb Inc".obs,
        eightThousandSixHundredText: "5,300".obs,
        fiftyThousandThreeHundredTwent: "+31 (+2.23%)".obs),
    UserprofileItemModel(
        rotiText: "UNVR".obs,
        nipponIndosariText: "Unilever Indonesia".obs,
        eightThousandSixHundredText: "3,867".obs,
        fiftyThousandThreeHundredTwent: "-71 (-41,1%)".obs),
    UserprofileItemModel(
        rotiText: "BBRI".obs,
        nipponIndosariText: "Bank Rakyat Indonesia".obs,
        eightThousandSixHundredText: "6,600".obs,
        fiftyThousandThreeHundredTwent: "-201 (-15,6%)".obs),
    UserprofileItemModel(
        rotiText: "ADRO".obs,
        nipponIndosariText: "Adaro Energy Indonesia".obs,
        eightThousandSixHundredText: "3,600".obs,
        fiftyThousandThreeHundredTwent: "+21 (+3.23%)".obs)
  ]);

  Rx<List<StockinfoItemModel>> stockinfoItemList = Rx([
    StockinfoItemModel(
        stockSymbol: "NFLX".obs,
        companyName: "Netflix, Inc".obs,
        numberOfShares: "2,122,340".obs,
        percentageChange: "-0.201%".obs),
    StockinfoItemModel(
        stockSymbol: "META".obs,
        companyName: "Meta Platforms".obs,
        numberOfShares: "987,890".obs,
        percentageChange: "+1,29%".obs),
    StockinfoItemModel(
        stockSymbol: "AMZN".obs,
        companyName: "Amazon.com, Inc".obs,
        numberOfShares: "1,001,333".obs,
        percentageChange: "-6.20%".obs)
  ]);
}
