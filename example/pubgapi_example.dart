import 'package:pubgapi/pubgapi.dart';

main() {
  var api = PUBGAPI("123131afsafsa");
  
    api.getPlayerByName("PanicIsReal")
    .then((player) {
      print(player.data[0].attributes.name);
    })
    .catchError((e) => print(e));
}
