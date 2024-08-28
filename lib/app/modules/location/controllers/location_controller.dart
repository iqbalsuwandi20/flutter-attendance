import 'package:get/get.dart'; // Paket GetX untuk manajemen status.
import 'package:google_maps_flutter/google_maps_flutter.dart'; // Paket untuk integrasi Google Maps.

class LocationController extends GetxController {
  var selectedLocation =
      Rxn<LatLng>(); // Variabel observable untuk menyimpan lokasi yang dipilih.

  /// Menetapkan lokasi baru.
  ///
  /// Parameter:
  /// - [position]: Koordinat lokasi yang akan diset (LatLng).
  Future<void> setLocation(LatLng position) async {
    selectedLocation.value =
        position; // Mengatur nilai selectedLocation dengan posisi baru.
  }

  /// Mendapatkan lokasi saat ini.
  ///
  /// Mengembalikan:
  /// - Posisi saat ini (LatLng) atau null jika belum diset.
  Future<LatLng?> getCurrentLocation() async {
    return selectedLocation.value; // Mengembalikan nilai dari selectedLocation.
  }
}
