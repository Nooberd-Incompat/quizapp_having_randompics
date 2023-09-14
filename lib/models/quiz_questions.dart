class QuizQuestion {
  const QuizQuestion(this.text, this.image, this.answers);

  final String text;
  final String image;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
