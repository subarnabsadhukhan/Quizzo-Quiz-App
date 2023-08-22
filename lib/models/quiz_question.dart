class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

/*

List.of() creates a new list best on another list. Basically, it copies an existing list.

shuffle() is a built-in method that can be called on lists to change the order of the items in the list. However, unlike map, it does change the original list. Map does not change the original list, Shuffle does.

*/