/* Class: MAD9135
 * Assignment: Hybrid-03
 * Student Name: Brodie Lewis
 * Number: 040 734 911
 * Date: Feb 1 2025
 * Repo:
 */

import 'dart:convert';
import 'students.dart';

void main() {
  // JSON String for Initial Student Data
  String jsonString = '''
  [
    {"id":1, "first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"id":2, "first":"Vladimir", "last":"Cezar", "email":"cezarv@algonquincollege.com"},
    {"id":3, "first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"id":4, "first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  // Convert JSON String into List of Maps
  List<Map<String, dynamic>> people =
      List<Map<String, dynamic>>.from(json.decode(jsonString));

  // Create Students instance
  Students students = Students(people);

  print("\n🔹 Sorting by first name:");
  students.sort("first");

  print("\n🔹 Adding a new student:");
  students.plus({
    "id": 5,
    "first": "John",
    "last": "Doe",
    "email": "johndoe@example.com"
  });

  print("\n🔹 Removing 'email' field from all students:");
  students.remove("email");
}
