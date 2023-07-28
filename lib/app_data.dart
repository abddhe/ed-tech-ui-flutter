import 'package:ed_tech/models/course.dart';
import 'package:ed_tech/models/user.dart';

const List<Course> coursesList = [
  Course(
      title: "UI",
      imageURL: "assets/images/UI.png",
      shortDescription: "Advanced mobile Interface design",
      description: "Advanced mobile Interface design",
      price: 50.0,
      category: "ui",
      duration: "2 h 30 min"),
  Course(
      title: "UI Advanced",
      imageURL: "assets/images/UI-advanced.png",
      shortDescription: "Advanced web application design",
      description: "Advanced web application design",
      price: 70.0,
      category: "ui",
      duration: "5 h 30 min"),
  Course(
      title: "HTML",
      imageURL: "assets/images/html.png",
      shortDescription: "Build web pages structure",
      description:
          "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
      price: 70.0,
      category: "code",
      duration: "1 h 20 min"),
];

const currentUser = User(
  name: "Abdullah Dheir",
  email: "abdullah.dheir@gmail.com",
  course: coursesList,
);
