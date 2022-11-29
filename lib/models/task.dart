class Task {
  final String name;
  bool isDone;

  Task({
     required this.isDone,
    required this.name,
  });

  void toggleDone(){
    this.isDone=!isDone;
  }
}
