import 'package:pubgapi/pubgapi.dart';
import 'package:test/test.dart';

void main() {
  group('Test Methods of API', () {
    PUBGAPI api;

    setUp(() async {
      String API_KEY = "";
      api = new PUBGAPI(API_KEY);
    });

    test('Find player and look them up', () async {
      try {
      var player = await api.getPlayerByName("PanicIsReal");
      print(player.data[0].relationships.matches.data[0].id);
      expect(player.data[0].attributes.name, equals("PanicIsReal"));
      } catch(e) {
        print(e);
      }
    });

    test('Make sure error handling works', () async {
      try {
        await api.getPlayerByName("Pcacikncs");
      } catch (e) {
        if (e is ResponseError) {
          switch (e.type) {
            case Errors.Custom:
              fail(e.message);
              break;
            case Errors.NotFound:
            case Errors.RateLimitExceeded:
              fail("NotFound/RateLimited");
              break;
          }
        }

        print(e);
      }
    });
  });
}

//division.bro.official.2018-04