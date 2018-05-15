import 'package:pubgapi/pubgapi.dart';
import 'package:test/test.dart';

void main() {
  group('Test Methods of API', () {
    PUBGAPI api;

    setUp(() async {
      String API_KEY = "";
      api = new PUBGAPI(API_KEY: API_KEY);
    });

    test('Find Match By Id', () async {
      var matchId = "22746c1d-8983-4bf2-b338-906f496fc378";
      try {
        var match = await api.getMatchById(matchId);
        expect(match.data.type, isNotEmpty);
      } catch(e) {
        print(e);
        fail("There was an error with the request $e");
      }
    });

    test('Load Telemetry Data', () async {
      var matchId = "22746c1d-8983-4bf2-b338-906f496fc378";
        try {
          var match = await api.getMatchById(matchId);
          expect(match.data.type, isNotEmpty);

          await match.loadTelemetryData(api);

          expect(match.telemetry.logPlayerKill.length, isNot(0));
        } catch(e) {
          print(e);
          fail("There was an error with the request $e");
        }
    });
  });
}