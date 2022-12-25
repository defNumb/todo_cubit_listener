// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

// Setting the states of the todo items
enum Filter {
  all,
  active,
  completed,
}

// Creates a unique ID for the todo item using the Uuid package
Uuid uuid = Uuid();

class Todo extends Equatable {
  final String id;
  final String desc;
  final bool completed;

// In the constructor if there is a uuid coming from outside, use that id
// otherwise create a new id
// If a new item is added and you do not give the value of the completed field
// sets the value of completed to False
  Todo({
    String? id,
    required this.desc,
    this.completed = false,
  }) : this.id = id ?? uuid.v4();

  @override
  List<Object?> get props => [id, desc, completed];

  @override
  String toString() => 'Todo(id: $id, desc: $desc, completed: $completed)';
}
