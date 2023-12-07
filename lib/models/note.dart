import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final dateFormat = DateFormat.yMd().add_jm();

class Note {
  final String id;
  final String title;
  final String content;
  final DateTime date;

  String get formattedDate {
    return dateFormat.format(date);
  }

  Note({required this.content, required this.title, required this.date})
      : id = uuid.v4();
}

var v1 = Note(
  title: 'flutter Course',
  content:
      'Flutter is an open-source UI software development kit used to create cross-platform applications for iOS, Android, Windows, Mac, and more. A 37-hour Flutter course for beginners is available on the freeCodeCamp.org YouTube channel. The course is developed by Vandad Nahavandipoor, a Google Developer Expert and Lead iOS Developer. The course covers setting up your development environment, creating screens and application logic, using Firebase and Figma, and deploying your iOS and Android apps to the App Store and the Google Play Store. The course is designed for absolute beginners, and you don’t even have to know how to write code in any programming language to begin. By the end of the course, you will know how to release an iOS and an Android app written in Flutter on the App Store and Google Play Store',
  date: DateTime.now(),
);
