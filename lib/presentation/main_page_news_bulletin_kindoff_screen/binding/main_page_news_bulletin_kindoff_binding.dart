import '../controller/main_page_news_bulletin_kindoff_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainPageNewsBulletinKindoffScreen.
///
/// This class ensures that the MainPageNewsBulletinKindoffController is created when the
/// MainPageNewsBulletinKindoffScreen is first loaded.
class MainPageNewsBulletinKindoffBinding extends Bindings {
  @override
  void dependencies() {
    Get.to(() => MainPageNewsBulletinKindoffController());
  }
}
