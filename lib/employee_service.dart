import 'package:cloud_firestore/cloud_firestore.dart';

class EmployeeService {
  final CollectionReference employeeCollection =
  FirebaseFirestore.instance.collection('employees');

  // Add employee
  Future<void> addEmployee(String name, String position) async {
    return await employeeCollection.add({
      'name': name,
      'position': position,
    });
  }

  // Get all employees
  Stream<QuerySnapshot> getEmployees() {
    return employeeCollection.snapshots();
  }
}
