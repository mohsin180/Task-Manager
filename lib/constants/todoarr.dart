class Todo {
  String? id;
  String? text;
  bool isdone;
  Todo({
    required this.id,
    required this.text,
    this.isdone = false,
  });
  static List<Todo> todoList() {
    return [
      Todo(id: "1", text: "web development", isdone: true),
      Todo(id: "2", text: "app development", isdone: true),
      Todo(
        id: "3",
        text: "artifical intelligence",
      ),
      Todo(
        id: "3",
        text: "Data Science",
      ),
      Todo(
        id: "4",
        text: "backend",
      ),
      Todo(
        id: "5",
        text: "frontend",
      ),
    ];
  }
}
