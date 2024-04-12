import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trial/models/visitModel.dart';

class visitsListNotifier extends StateNotifier<List<Visit>> {
  visitsListNotifier()
      : super([
          Visit(
              hospitalName: "Max",
              doctorId: "06/07/2023",
              doctorName: "Dr. TK Jain",
              diagnosis: "diagnosis",
              symptoms: "symptoms"),
          Visit(
              hospitalName: "Medanta",
              doctorId: "26/02/2024",
              doctorName: "Dr. Rinkaj",
              diagnosis: "diagnosis",
              symptoms: "symptoms")
        ]);
}

final visitListProvider =
    StateNotifierProvider<visitsListNotifier, List<Visit>>(
        (ref) => visitsListNotifier());
