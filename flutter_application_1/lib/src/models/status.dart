enum Status {
  on(id: 1),
  off(id: 2),
  error(id: 3);

  final int id;

  const Status({required this.id});

  factory Status.fromId(int id) {
    return values.firstWhere((e) => e.id == id);
  }
}
