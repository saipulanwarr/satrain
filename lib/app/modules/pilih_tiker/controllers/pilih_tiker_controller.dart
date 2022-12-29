import 'package:get/get.dart';

class PilihTikerController extends GetxController {
  var indexGerbong = 0.obs;
  var indexKursi = 0.obs;

  void gantiGerbong(int indexGerbongTerpilih) {
    indexGerbong.value = indexGerbongTerpilih;
    // gerbong.refresh();
  }

  void selectKursi(int indexKursiTerpilih) {
    print(gerbong[indexGerbong.value][indexKursiTerpilih]);
    if (gerbong[indexGerbong.value][indexKursiTerpilih]["status"] ==
        "available") {
      gerbong[indexGerbong.value][indexKursiTerpilih]
          .update("status", (value) => "selected");
    }
    // indexKursi.value = indexKursiTerpilih;
    // gerbong.refresh();
  }

  var gerbong = List.generate(
    6,
    (indexG) => List<Map<String, dynamic>>.generate(
      75,
      (indexK) {
        if (indexG == 0) {
          if (indexK >= 24 && indexK <= 29 || indexK >= 40 && indexK <= 44) {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "available",
            };
          }
        } else if (indexG == 1) {
          if (indexK >= 5 && indexK <= 35) {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "filled",
            };
          } else {
            return {
              "id": "ID-${indexG + 1}-${indexK + 1}",
              "status": "available",
            };
          }
        } else {
          return {
            "id": "ID-${indexG + 1}-${indexK + 1}",
            "status": "available",
          };
        }
      },
    ),
  );
}
