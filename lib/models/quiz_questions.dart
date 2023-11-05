class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
    //final ensures that we do not reassign any value to shuffledList vairable
  }
}
// here in shuffle we are making a new list and then shuffling the list 
// this method is known as chaining
