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

  /// Sorts the List based on the given field (e.g., 'first' or 'email')
  void sort(String fieldName) {
    people.sort(
        (a, b) => a[fieldName].toString().compareTo(b[fieldName].toString()));
    output();
  }

  /// Outputs each student's details
  void output() {
    for (var person in people) {
      print(person);
    }
  }

  /// Adds a new student to the list and prints the updated list
  void plus(Map<String, dynamic> person) {
    people.add(person);
    output();
  }

  /// Removes a specific field (key) from each student record
  void remove(String fieldName) {
    for (var person in people) {
      person.remove(fieldName);
    }
    output();
  }
}
