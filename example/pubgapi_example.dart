import 'package:pubgapi/pubgapi.dart';

main() {
  var api = PUBGAPI(API_KEY: "ASDASDAD");
  
    api.getPlayerByName("PanicIsReal")
    .then((player) {
      print(player.data[0].attributes.name);
    })
    .catchError((e) => print(e));
}
