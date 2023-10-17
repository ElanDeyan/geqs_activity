sealed class AthletCategory {}

final class Base extends AthletCategory {
  Base();

  @override
  String toString() => 'Base';
}

final class Under20 extends AthletCategory {
  Under20();

  @override
  String toString() => 'Under20';
}

final class Profesional extends AthletCategory {
  Profesional();

  @override
  String toString() => 'Profesional';
}

final class Master extends AthletCategory {
  Master();

  @override
  String toString() => 'Master';
}

final class Undefined extends AthletCategory {
  Undefined();

  @override
  String toString() => 'Undefined';
}
