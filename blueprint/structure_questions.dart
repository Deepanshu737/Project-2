class StructureQuestions {
  const StructureQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswer() {
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}