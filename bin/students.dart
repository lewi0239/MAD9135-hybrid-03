import 'dart:convert';

/* Class: MAD9135
 * Assignment: Hybrid-03
 * Student Name: Brodie Lewis
 * Number: 040 734 911
 * Date: Feb 1 2025
 * Repo: https://github.com/lewi0239/MAD9135-hybrid-03
 */

class Students {
  List<Map<String, dynamic>> people;

  Students(this.people);

  void sort(String fieldName) {
    people.sort(
        (a, b) => a[fieldName].toString().compareTo(b[fieldName].toString()));
    output();
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, dynamic> person) {
    people.add(person);
    output();
  }

  void remove(String fieldName) {
    people.removeWhere((person) => person.containsKey(fieldName));
    output();
  }
}
