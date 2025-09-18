import 'package:flutter_riverpod/flutter_riverpod.dart';

final onHoveredProvider = StateProvider.family<bool, String>((ref, id) {
  return false;
});
