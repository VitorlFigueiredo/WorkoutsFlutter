class Bob {
  String response(String question) {
    if (question.substring(question.length - 1) == "?") {
      return "Sure.";
    } else if (question.contains(question.toUpperCase()) &&
        (question.substring(question.length - 1) == "?")) {
      return "Calm down, I know what I'm doing!";
    } else if (question.length.isNaN) {
      return question.toLowerCase();
    } else if (question.isEmpty || question.indexOf("") >= 0) {
      return "Fine. Be that way!";
    } else {
      return "Whatever.";
    }
  }
}
