import 'package:flutter/material.dart';
import '../employee_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EmployeeListScreen extends StatelessWidget {
  final EmployeeService _employeeService = EmployeeService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Employee List')),
      body: StreamBuilder<QuerySnapshot>(
        stream: _employeeService.getEmployees(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          var employees = snapshot.data!.docs;

          return ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, index) {
              var employee = employees[index];
              return ListTile(
                title: Text(employee['name']),
                subtitle: Text(employee['position']),
              );
            },
          );
        },
      ),
    );
  }
}
