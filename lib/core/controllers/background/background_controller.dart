import 'package:get/get.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

import '../../base/base_controller.dart';
import '../../constants/constants.dart';

class BackgroundController extends GetxController {
  final PlatformWebViewController platformWebViewController =
      PlatformWebViewController(
    const PlatformWebViewControllerCreationParams(),
  );
  RxString backgroundImage = "".obs;

  void getBackgroundImage() {
    backgroundImage.value = BaseController.themeController.isDark.value
        ? darkThemeBackground
        : lightThemeBackground;
    platformWebViewController.loadRequest(
      LoadRequestParams(
        uri: Uri.parse(backgroundImage.value),
      ),
    );
  }
}
