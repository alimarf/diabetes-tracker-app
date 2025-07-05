String formatDecimalInput(String? input) {
  if (input == null) return '0';
  final sanitized = input.replaceAll(',', '.');

  final match = RegExp(r'^(\d+)(\.\d{0,1})?').firstMatch(sanitized);
  if (match != null) {
    return match.group(0)!;
  }
  return '0';
}
