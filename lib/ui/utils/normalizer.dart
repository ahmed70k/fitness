// lib/ui/utils/normalizer.dart

String normalizeText(String input) {
  return input
      .toLowerCase()
      .replaceAll('أ', 'ا')
      .replaceAll('إ', 'ا')
      .replaceAll('آ', 'ا')
      .replaceAll('ى', 'ي')
      .replaceAll('ئ', 'ي')
      .replaceAll('ؤ', 'و')
      .replaceAll('ة', 'ه')
      .replaceAll('ً', '')
      .replaceAll('ٌ', '')
      .replaceAll('ٍ', '')
      .replaceAll('َ', '')
      .replaceAll('ُ', '')
      .replaceAll('ِ', '')
      .replaceAll('ّ', '')
      .replaceAll('ْ', '')
      .replaceAll(RegExp(r'[^\u0621-\u064A0-9a-zA-Z ]'), '');
}
