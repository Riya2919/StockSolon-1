import '../../../core/app_export.dart';

/// This class is used in the [stockinfo_item_widget] screen.
class StockinfoItemModel {
  StockinfoItemModel({
    this.stockSymbol,
    this.companyName,
    this.numberOfShares,
    this.percentageChange,
    this.id,
  }) {
    stockSymbol = stockSymbol ?? Rx("NFLX");
    companyName = companyName ?? Rx("Netflix, Inc");
    numberOfShares = numberOfShares ?? Rx("2,122,340");
    percentageChange = percentageChange ?? Rx("-0.201%");
    id = id ?? Rx("");
  }

  Rx<String>? stockSymbol;

  Rx<String>? companyName;

  Rx<String>? numberOfShares;

  Rx<String>? percentageChange;

  Rx<String>? id;
}
