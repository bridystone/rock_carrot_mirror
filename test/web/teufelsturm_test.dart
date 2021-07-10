import 'package:flutter_test/flutter_test.dart';
import 'package:rock_carrot/web/teufelsturm.dart';

void main() {
  group('Testing TT Singleton', () {
    test('is singleton', () {
      final tt1 = Teufelsturm();
      final tt2 = Teufelsturm();
      expect(tt1 == tt2, true);
    });
  });

  group('fetch rock results from Teufelsturm', () {
    test('fetchRocksByArea()', () async {
      final result_illegal =
          await Teufelsturm().fetchRocksByArea(-10); // illegal
      final result_all = await Teufelsturm().fetchRocksByArea(0); // all
      final result_steine =
          await Teufelsturm().fetchRocksByArea(1); // Gebiet der Steine
      final result_out_of_bounds = await Teufelsturm().fetchRocksByArea(99);

      // check resulting srings equality
      expect(result_illegal.hashCode == result_all.hashCode, true);
      expect(result_steine.hashCode == result_all.hashCode, false);

      // check failure code
      final found_nothing = RegExp(
          'Es wurden leider keine passenden Gipfel gefunden',
          multiLine: true);
      expect(found_nothing.hasMatch(result_out_of_bounds), true);

      // check numbers
      final found_all = RegExp(
        '(?:' +
            sandsteinNameTeufelsturmAreaIdMap.keys
                .join('|')
                .replaceAll('ß', 'ss') + //ß in sandstein is ss in Teufelsturm
            ')',
        multiLine: true,
        caseSensitive: false,
      );
      expect(
        found_all.allMatches(result_steine).length,
        114, // there are currently 114 rocks in Gebiet der Steine
      );
      expect(
        found_all.allMatches(result_all).length,
        1157, // there are currently 1147 Rocks + 10 matching rocks - i.e. Hinterhermsdorf(erTurm) -  = 1157
      );
      expect(found_all.allMatches(result_out_of_bounds).length, 0);
    });
  });
}
