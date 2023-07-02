import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

import '../../constants/portfolio_constants.dart';
import '../../models/portfolio_model.dart';

class PortfolioController extends GetxController {
  Rx<PortfolioType> portfolioType = PortfolioType.all.obs;
  RxList<PortfolioModel> portfolios = RxList<PortfolioModel>();
  RxList<String> portfolioMediaUrls = RxList<String>();
  final CarouselController carouselController = CarouselController();
  RxInt sliderIndex = 0.obs;

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

  void getMediaUrls(List<String> urls) {
    portfolioMediaUrls.value = urls;
  }

  void changeSliderPage(int index) {
    sliderIndex.value = index;
  }
}
