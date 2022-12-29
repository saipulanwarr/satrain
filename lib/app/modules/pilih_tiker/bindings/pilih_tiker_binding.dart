import 'package:get/get.dart';

import '../controllers/pilih_tiker_controller.dart';

class PilihTikerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PilihTikerController>(
      () => PilihTikerController(),
    );
  }
}
