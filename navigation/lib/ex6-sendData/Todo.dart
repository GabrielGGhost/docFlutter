class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);

  static final todos = List.generate(
      20, (index) => Todo(
      'Todo $index',
      'Descrição para o todo $index'
    ));
}