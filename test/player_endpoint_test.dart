import 'package:pubgapi/pubgapi.dart';
import 'package:test/test.dart';

void main() {
  group('Test Methods of API', () {
    PUBGAPI api;

    setUp(() async {
      String API_KEY = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJkMWE4ZWQ4MC0zMDQ0LTAxMzYtMDgxMi0wYTU4NjQ3NTk1MDIiLCJpc3MiOiJnYW1lbG9ja2VyIiwiaWF0IjoxNTI1MjcyMDg3LCJwdWIiOiJibHVlaG9sZSIsInRpdGxlIjoicHViZyIsImFwcCI6InBhbmljIiwic2NvcGUiOiJjb21tdW5pdHkiLCJsaW1pdCI6NTB9.Tq75T0wn5hYOt09iFT10s4MzEZgMfQlQPidt_m_R-pI";
      api = new PUBGAPI(API_KEY: API_KEY);
    });

    test('Find player and look them up', () async {
      try {
      var player = await api.getPlayerByName("PanicIsReal");
      print(player.data[0].attributes.name);
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