class Todo{
  String? task;
  String? id;
  bool isDone;

  Todo(
  {
    required this.id,
    required this.task,
    this.isDone = false
}
      );
  static List<Todo> tododata(){
    return[
      Todo(id: "01", task: "Send mail to Aryan")

    ];
  }
}