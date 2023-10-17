import 'package:geqs_activity/geqs_activity.dart';
import 'package:test/test.dart';

void main() {
  group('Undefined cases', () {
    test('Under 15', () {
      for (var age in [for (var i = 0; i < 15; i++) i]) {
        expect(classifyAthlet(age), isA<Undefined>());
      }
    });

    test('Above 35', () {
      expect(classifyAthlet(36), isA<Master>());
    });
  });

  group('Base', () {
    test('Last and first wrong cases', () {
      expect(classifyAthlet(14), isA<Undefined>());

      expect(classifyAthlet(18), isA<Under20>());
    });

    test('Right cases', () {
      for (var age in [15, 16, 17]) {
        expect(classifyAthlet(age), isA<Base>());
      }
    });
  });

  group('Under 20', () {
    test('Last and first wrong cases', () {
      expect(classifyAthlet(17), isA<Base>());

      expect(classifyAthlet(20), isA<Profesional>());
    });
    test('Right cases', () {
      expect(classifyAthlet(18), isA<Under20>());
      expect(classifyAthlet(19), isA<Under20>());
    });
  });

  group('Profesional', () {
    test('Right cases', () {
      for (var age in [for (var i = 20; i < 35; i++) i]) {
        expect(classifyAthlet(age), isA<Profesional>());
      }
    });
  });

  group('Master', () {
    test('Unique case', () {
      expect(classifyAthlet(35), isA<Master>());
    });
  });
}
