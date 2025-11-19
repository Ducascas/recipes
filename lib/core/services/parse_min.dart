int? parseMinutes(String prepTime) {
  final digits = RegExp(r'\d+').firstMatch(prepTime)?.group(0);
  return digits == null ? null : int.tryParse(digits);
}
