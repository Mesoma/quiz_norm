class QuestionModel {
  final String question;
  final String answer;
  final List<String> options;
   String userAnswered;

  QuestionModel({
    required this.question,
    required this.answer,
    required this.options,
    this.userAnswered = "",
  });
}

List <QuestionModel> sampleQuestions = [
  QuestionModel(
    question: "Motor racing is the ______ sport in the world",
    answer: "fastest",
    options: [
      "fastest",
      "fast",
      "faster",
      "fasting",
    ],
  ),
  QuestionModel(
    question: "______ is the largest planet in the solar system",
    answer: "Jupiter",
    options: [
      "Jupiter",
      "Saturn",
      "Earth",
      "Mars",
    ],
  ),
  QuestionModel(
    question: "The largest country in the world is ______ ",
    answer: "Russia",
    options: [
      "Russia",
      "China",
      "USA",
      "Canada",
    ],
  ),
  QuestionModel(
    question: "Who is the current President of Nigeria?",
    answer: "Tinubu",
    options: [
      "Jonathan",
      "Tuface",
      "Atiku",
      "Tinubu",
    ],
  ),
  QuestionModel(
    question: "When was Prodevs founded?",
    answer: "2020",
    options: [
      "2015",
      "2020",
      "2019",
      "2022",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest river in the world",
    answer: "Amazon",
    options: [
      "Amazon",
      "Nile",
      "Yangtze",
      "Mississippi",
    ],
  ),
  QuestionModel(
    question: "The largest lake in the world is ______ ",
    answer: "Caspian",
    options: [
      "Caspian",
      "Superior",
      "Victoria",
      "Huron",
    ],
  ),
  QuestionModel(
    question: "______ is known to be the largest mountain in the world",
    answer: "Mount Everest",
    options: [
      "Mount Everest",
      "K2",
      "Kangchenjunga",
      "Lhotse",
    ],
  ),
  QuestionModel(
    question: "Nigeria is divided into ______ Geo-Political zones?",
    answer: "6",
    options: [
      "4",
      "2",
      "6",
      "3",
    ],
  ),
  QuestionModel(
    question: "The ______ is the largest island in the world",
    answer: "Greenland",
    options: [
      "Greenland",
      "New Guinea",
      "Borneo",
      "Madagascar",
    ],
  ),
];