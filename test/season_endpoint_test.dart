import 'package:pubgapi/pubgapi.dart';
import 'package:test/test.dart';

void main() {
  group('Test Methods of API', () {
    PUBGAPI api;

    setUp(() async {
      String API_KEY = "";
      api = new PUBGAPI(API_KEY: API_KEY);
    });

    test('Get Season Data', () async {
      try {
        var seasonData = await api.getSeasonInfo();
        expect(seasonData.data[0].id, isNotEmpty);
      } catch(e) {
        if (e is ResponseError) {
          switch (e.type) {
            case Errors.Custom:
              fail(e.message);
              break;
            case Errors.NotFound:
              fail("404 Error");
              break;
            case Errors.RateLimitExceeded:
              fail("API Rate Limit Exceeded");
              break;
          }
        } else {
          fail(e.toString());
        }
      }
    });

    test('Get Player Season Data', () async {
      try {
        var player = await api.getPlayerByName("PanicIsReal");
        var accId = player.data[0].id;

        var seasonData = await api.getSeasonByPlayerId(accId, "division.bro.official.2018-04");
        
        expect(seasonData.data.type, equals("playerSeason"));

      } catch (e) {
        if (e is ResponseError) {
          switch (e.type) {
            case Errors.Custom:
              fail(e.message);
              break;
            case Errors.NotFound:
              fail("404 Error");
              break;
            case Errors.RateLimitExceeded:
              fail("API Rate Limit Exceeded");
              break;
          }
        } else {
          fail(e.toString());
        }
      }
    });
  });
}

//division.bro.official.2018-04