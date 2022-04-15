class InqvineFake<T> {
  InqvineFake({
    required this.model,
    required this.title,
    required this.description,
    this.actions = const <String, Function>{},
  });

  final T model;
  final String title;
  final String description;

  final Map<String, Function> actions;
}
