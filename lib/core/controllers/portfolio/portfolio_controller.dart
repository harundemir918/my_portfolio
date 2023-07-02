import 'package:get/get.dart';

import '../../constants/portfolio_constants.dart';
import '../../models/portfolio_model.dart';

class PortfolioController extends GetxController {
  Rx<PortfolioType> portfolioType = PortfolioType.all.obs;
  RxList<PortfolioModel> portfolios = RxList<PortfolioModel>();

  @override
  void onInit() {
    portfolios.value = portfolioList;
    super.onInit();
  }

  void changeType(PortfolioType type) {
    portfolioType.value = type;
    if (type == PortfolioType.all) {
      portfolios.value = portfolioList;
    } else {
      portfolios.value =
          portfolioList.where((portfolio) => portfolio.type == type).toList();
    }
  }
}
