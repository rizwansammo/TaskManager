import 'package:flutter/material.dart';
import '../employee_service.dart';

class AddEmployeeScreen extends StatefulWidget {
  @override
  _AddEmployeeScreenState createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _positionController = TextEditingController();
  final EmployeeService _employeeService = EmployeeService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Employee')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _positionController,
              decoration: InputDecoration(labelText: 'Position'),
            ),
            ElevatedButton(
              onPressed: () {
                _employeeService.addEmployee(
                  _nameController.text,
                  _positionController.text,
                );
              },
              child: Text('Add Employee'),
            ),
          ],
        ),
      ),
    );
  }
}
