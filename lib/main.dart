import 'package:flutter/material.dart';
import 'screens/add_employee_screen.dart';
import 'screens/employee_list_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excellence Bangladesh Employee Manager',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(), // Initial Screen (login or registration)
      routes: {
        '/addEmployee': (context) => AddEmployeeScreen(),
        '/employeeList': (context) => EmployeeListScreen(),
      },
    );
  }
}
