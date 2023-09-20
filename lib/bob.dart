class Bob {
  bool isSilence(String question) => question.trim().isEmpty;

  bool isScreaming(String question) {
    return question == question.toUpperCase() && hasLetters(question);
  }

  bool hasLetters(String question) =>
      question.toUpperCase() != question.toLowerCase();

  bool isAQuestion(String question) =>
      question.lastIndexOf("?") == question.length - 1;

  String response(String question) {
    var preparedQuestion = question.trim();

    if (isSilence(preparedQuestion)) {
      return "Fine. Be that way!";
    } else if (isAQuestion(preparedQuestion) && isScreaming(preparedQuestion)) {
      return "Calm down, I know what I'm doing!";
    } else if (isScreaming(preparedQuestion)) {
      return "Whoa, chill out!";
    } else if (isAQuestion(preparedQuestion)) {
      return "Sure.";
    } else {
      return "Whatever.";
    }
  }
}
