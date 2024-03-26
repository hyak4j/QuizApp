class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // 提供不同排序的選項
    // 複製原先的Lists，然後shuffle
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}