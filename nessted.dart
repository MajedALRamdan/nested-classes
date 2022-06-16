class Student {
  String name;
  String major;
  List<double> marks;
  double average = 0;
  Student({required this.name, required this.major, required this.marks});

  static List<Student> students = [
    Student(
      name: 'omar',
      major: 'engineering',
      marks: [75, 83, 70, 74, 88],
    ),
    Student(
      name: 'mohammad',
      major: 'medicine',
      marks: [95, 82, 89, 98, 85],
    ),
    Student(
      name: 'salem',
      major: 'literature',
      marks: [60, 80, 67, 55, 77],
    ),
  ];
  void calSum() {
    for (Student x in students) {
      double sum = 0;
      for (double mark in x.marks) {
        sum += mark;
      }
      print(x.average = sum / marks.length);
    }
  }

  double calcAvg() {
    double sum = 0;
    for (double mark in marks) {
      sum += mark;
    }
    average = sum / marks.length;
    return (average);
  }
}

void main() {
  for (Student student in Student.students) {
    double avg = student.calcAvg();
    print("${student.name}: and his mark is ${avg}");
  }
}
