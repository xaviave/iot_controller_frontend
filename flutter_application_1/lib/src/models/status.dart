enum Status {
  on(id: 1),
  off(id: 2),
  error(id: 3);

  const Status({required this.id});

  final int id;
}
