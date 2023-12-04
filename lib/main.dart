// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'GPA Calculator',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check login credentials (simplified for demo)
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => YearSelectionPage()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid email or password'),
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class YearSelectionPage extends StatelessWidget {
  final Map<String, dynamic> courseData = {
    "Year1": {
      "Spring": [
        {"Course Title": "Introduction to Computer Science"},
        {"Course Title": "Structured Programming Language"},
        {"Course Title": "Structured Programming Language Sessional"},
        {"Course Title": "English I (English Fundamentals)"},
        {"Course Title": "Mathematics I (Differential and Integral Calculus)"}
      ],
      "Summer": [
        {"Course Title": "Object-Oriented Programming I"},
        {"Course Title": "Object-Oriented Programming I Sessional"},
        {"Course Title": "English II (Business English)"},
        {
          "Course Title":
              "Mathematics II (Matrix, Vector & Coordinate Geometry)"
        },
        {"Course Title": "Principles of Physics I"}
      ],
      "Fall": [
        {"Course Title": "Discrete Mathematics"},
        {"Course Title": "Electrical Engineering and Circuit Analysis"},
        {
          "Course Title":
              "Electrical Engineering and Circuit Analysis Sessional"
        },
        {
          "Course Title":
              "Mathematics III (Linear Algebra, Ordinary & Partial Differentiation Equation)"
        },
        {"Course Title": "Principles of Physics II"}
      ]
    },
    "Year2": {
      "Spring": [
        {"Course Title": "Data Structure"},
        {"Course Title": "Data Structure Sessional"},
        {"Course Title": "Digital Logic Design"},
        {"Course Title": "Digital Logic Design Sessional"},
        {"Course Title": "Economics"},
        {
          "Course Title":
              "Mathematics IV (Complex Variable & Laplace Transform)"
        }
      ],
      "Summer": [
        {"Course Title": "Algorithms"},
        {"Course Title": "Algorithms Sessional"},
        {"Course Title": "Theory of Computation"},
        {"Course Title": "Electronic Engineering"},
        {"Course Title": "Electronic Engineering Sessional"},
        {"Course Title": "Society & Technology"}
      ],
      "Fall": [
        {"Course Title": "Database Management System"},
        {"Course Title": "Database Management System Sessional"},
        {"Course Title": "Digital Electronics & Pulse Techniques"},
        {"Course Title": "Digital Electronics & Pulse Techniques Sessional"},
        {"Course Title": "Web Programming Sessional"},
        {"Course Title": "Industrial Management and Law"}
      ]
    },
    "Year3": {
      "Spring": [
        {"Course Title": "Microprocessor & Assembly Language Programming"},
        {
          "Course Title":
              "Microprocessor & Assembly Language Programming Sessional"
        },
        {"Course Title": "Computer Architecture"},
        {"Course Title": "Data Communications"},
        {"Course Title": "Accounting"}
      ],
      "Summer": [
        {"Course Title": "Operating System"},
        {"Course Title": "Operating System Sessional"},
        {"Course Title": "Compiler Design"},
        {"Course Title": "Compiler Design Sessional"},
        {"Course Title": "Numerical Methods"},
        {"Course Title": "Numerical Methods Sessional"}
      ],
      "Fall": [
        {"Course Title": "Computer Networks"},
        {"Course Title": "Computer Networks Sessional"},
        {"Course Title": "State of Art Programming"},
        {"Course Title": "State of Art Programming Sessional"},
        {"Course Title": "Computer Peripherals and Interfacing"},
        {"Course Title": "Computer Peripherals and Interfacing Sessional"}
      ]
    },
    "Year4": {
      "Spring": [
        {"Course Title": "Information System Analysis & Design"},
        {"Course Title": "Technical Writing & Seminar"},
        {"Course Title": "Computer Graphics"},
        {"Course Title": "Computer Graphics Sessional"},
        {"Course Title": "Artificial Intelligence"},
        {"Course Title": "Artificial Intelligence Sessional"}
      ],
      "Summer": [
        {"Course Title": "Project & Thesis"},
        {"Course Title": "Software Engineering"},
        {"Course Title": "Simulation & Modeling"},
        {"Course Title": "Simulation & Modeling Sessional"},
        {"Course Title": "CSE425 (CSE425)"},
        {"Course Title": "CSE426 (CSE426)"}
      ],
      "Fall": [
        {"Course Title": "Project & Thesis"},
        {"Course Title": "Mobile Application Development Sessional"},
        {"Course Title": "CSE426 (CSE426)"},
        {"Course Title": "CSE426 (CSE426)"}
      ]
    }
  };

  YearSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Year Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SemesterPage(year: 1, courseData: courseData["Year1"]),
                  ),
                );
              },
              child: const Text('1st Year'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SemesterPage(year: 2, courseData: courseData["Year2"]),
                  ),
                );
              },
              child: const Text('2nd Year'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SemesterPage(year: 3, courseData: courseData["Year3"]),
                  ),
                );
              },
              child: const Text('3rd Year'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SemesterPage(year: 4, courseData: courseData["Year4"]),
                  ),
                );
              },
              child: const Text('4th Year'),
            ),
          ],
        ),
      ),
    );
  }
}

class SemesterPage extends StatelessWidget {
  final int year;
  final Map<String, dynamic> courseData;

  const SemesterPage({super.key, required this.year, required this.courseData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semester Selection - Year $year'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursePage(
                      year: year,
                      semester: 'Spring',
                      courses: courseData["Spring"],
                    ),
                  ),
                );
              },
              child: const Text('Spring Semester'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursePage(
                      year: year,
                      semester: 'Summer',
                      courses: courseData["Summer"],
                    ),
                  ),
                );
              },
              child: const Text('Summer Semester'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursePage(
                      year: year,
                      semester: 'Fall',
                      courses: courseData["Fall"],
                    ),
                  ),
                );
              },
              child: const Text('Fall Semester'),
            ),
          ],
        ),
      ),
    );
  }
}

class CoursePage extends StatefulWidget {
  final int year;
  final String semester;
  final List<dynamic> courses;

  const CoursePage(
      {super.key, required this.year, required this.semester, required this.courses});

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final List<TextEditingController> courseControllers = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.courses.length; i++) {
      courseControllers.add(TextEditingController());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.semester} Semester - Year ${widget.year}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < widget.courses.length; i++)
              TextField(
                controller: courseControllers[i],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: widget.courses[i]["Course Title"]),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Calculate GPA and navigate to the next page
                double totalMarks = 0.0;
                for (int i = 0; i < courseControllers.length; i++) {
                  double courseMarks =
                      double.tryParse(courseControllers[i].text) ?? 0.0;
                  double courseGPA = calculateGPA(courseMarks);
                  totalMarks += courseGPA;
                }
                double totalGPA = totalMarks / courseControllers.length;

                // Navigate to the CGPA page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CGPAPage(gpa: totalGPA),
                  ),
                );
              },
              child: const Text('Calculate GPA'),
            ),
          ],
        ),
      ),
    );
  }

  double calculateGPA(double marks) {
    if (marks >= 80) {
      return 4.0;
    } else if (marks >= 75) {
      return 3.75;
    } else if (marks >= 70) {
      return 3.50;
    } else if (marks >= 65) {
      return 3.25;
    } else if (marks >= 60) {
      return 3.00;
    } else if (marks >= 55) {
      return 2.75;
    } else if (marks >= 50) {
      return 2.50;
    } else if (marks >= 45) {
      return 2.25;
    } else if (marks >= 40) {
      return 2.00;
    } else {
      return 0.00;
    }
  }
}

class CGPAPage extends StatelessWidget {
  final double gpa;

  const CGPAPage({super.key, required this.gpa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CGPA Calculation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your GPA: $gpa'),
          ],
        ),
      ),
    );
  }
}
