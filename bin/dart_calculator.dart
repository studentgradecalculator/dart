import 'package:dart_calculator/dart_calculator.dart';

void main() {
  printRankedStudents(students);

  final top = getTopStudent(students);
  print('\\n🏆 Top Student: ${top.name} — Average: ${top.average.toStringAsFixed(2)} (${top.grade})');
}

List<Student> rankStudents(List<Student> students) {
  final sorted = [...students];
  sorted.sort((a, b) => b.average.compareTo(a.average));
  return sorted;
}

void printRankedStudents(List<Student> students) {
  print('📊 Student Rankings:\\n');
  final ranked = rankStudents(students);
  for (int i = 0; i < ranked.length; i++) {
    print('  ${i + 1}. ${ranked[i].name} — Average: ${ranked[i].average.toStringAsFixed(2)} | Grade: ${ranked[i].grade}');
  }
}

Student getTopStudent(List<Student> students) {
  return rankStudents(students).first;
}

List<Student> students = [
  Student('Alice', [
    Subject('Math', 18),
    Subject('Science', 16),
    Subject('History', 19),
    Subject('Art', 15),
  ]),
  Student('Bob', [
    Subject('Math', 5),
    Subject('Science', 4),
    Subject('History', 8),
    Subject('Art', 9),
  ]),
  Student('Charlie', [
    Subject('Math', 14),
    Subject('Science', 12),
    Subject('History', 13),
    Subject('Art', 10),
  ]),
  Student('Diana', [
    Subject('Math', 12),
    Subject('Science', 9),
    Subject('History', 12),
    Subject('Art', 15),
  ]),
  Student('Eve', [
    Subject('Math', 10),
    Subject('Science', 8),
    Subject('History', 8),
    Subject('Art', 10),
  ]),
];