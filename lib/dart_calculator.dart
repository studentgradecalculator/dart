class Student {
  final String name;
  final List<Subject> subjects;

  Student(this.name, this.subjects);

  // Average doesn't need a parameter — it can use its own subjects
  double get average {
    final total = subjects.fold(0.0, (sum, subject) => sum + subject.grade);
    return total / subjects.length;
  }

  String get grade {
    if (average >= 16) return 'A';
    else if (average >= 14) return 'B';
    else if (average >= 12) return 'C';
    else if (average >= 10) return 'D';
    else return 'F';
  }
}

class Subject {
  final String name;
  final double grade;

  Subject(this.name, this.grade);
}