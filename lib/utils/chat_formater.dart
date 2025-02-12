String chatFormatter(String text) {
  const int maxCharsPerLine = 50;
  List<String> lines = [];
  String currentLine = "";

  for (String word in text.split(" ")) {
    if ((currentLine + word).length <= maxCharsPerLine) {
      currentLine += (currentLine.isEmpty ? "" : " ") + word;
    } else {
      lines.add(currentLine);
      currentLine = word;
    }
  }
  if (currentLine.isNotEmpty) {
    lines.add(currentLine);
  }
  return lines.join('\n');
}
