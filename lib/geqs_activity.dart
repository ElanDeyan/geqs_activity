/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/geqs_activity_base.dart';

import 'src/geqs_activity_base.dart';

AthletCategory classifyAthlet(int age) {
  if (_validateAge(age)) {
    return switch (age) {
      < 15 => Undefined(),
      >= 15 && <= 17 => Base(),
      18 || 19 => Under20(),
      >= 20 && <= 34 => Profesional(),
      <= 35 => Master(),
      _ => Undefined()
    };
  } else {
    throw ArgumentError.value(age, null, 'Invalid age!');
  }
}

bool _validateAge(int age) {
  return age > 0 || age <= 120;
}
