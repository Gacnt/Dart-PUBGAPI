import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/player.dart';
import 'models/season.dart';
import 'models/match.dart';
import 'models/telemetry.dart';

enum Errors {
  RateLimitExceeded,
  NotFound,
  Custom
}

class ResponseError {
  Errors type;
  String message;

  ResponseError(this.type, this.message);
}

Map<T, List<S>> groupBy<S, T>(Iterable<S> values, T key(S element)) {
  var map = <T, List<S>>{};
  for (var element in values) {
    var list = map.putIfAbsent(key(element), () => []);
    list.add(element);
  }
  return map;
}

class PUBGAPI {
  String API_KEY;
  String API_URL = "https://api.playbattlegrounds.com/shards";
  String API_SHARD = "pc-na";

  PUBGAPI({this.API_KEY});

  Future<dynamic> _sendRequestRaw(String requestURI) async {
    final Map<String,String> _headers = {
      "Accept": "application/vnd.api+json"
    };

    var res = await http
      .get(Uri.encodeFull(requestURI), headers: _headers);

    if (res.statusCode == 404) {
      return new Future.error(new ResponseError(Errors.NotFound, ""));
    }
    if (res.statusCode == 429) {
      return new Future.error(new ResponseError(Errors.RateLimitExceeded, ""));
    }

    var resBody = JSON.decode(res.body);

    return resBody;
  }


  Future<dynamic> _sendRequest(String requestURI) async {
    final Map<String, String> _headers = {
      "Accept": "application/vnd.api+json",
      "Authorization": "Bearer $API_KEY"
    };

    var res = await http
      .get(Uri.encodeFull("$API_URL/$API_SHARD/$requestURI"), headers: _headers);

    if (res.statusCode == 404) {
      return new Future.error(new ResponseError(Errors.NotFound, ""));
    }
    if (res.statusCode == 429) {
      return new Future.error(new ResponseError(Errors.RateLimitExceeded, ""));
    }

    var resBody = JSON.decode(res.body);

    if ((resBody as Map).containsKey("errors")) {

      var err = resBody["errors"];
      return new Future.error(new ResponseError(Errors.Custom, err.toString()));
    }

    return resBody;
  }

  Future<APlayer> getPlayerByName(String name) async {
    final String _request = "players?filter[playerNames]=$name";
    try {
      var res = await _sendRequest(_request);
      return new APlayer.fromJson(res);
    } catch (e, x) {
      print(x);
      return new Future.error(e);
    }
  }

  Future<ASeasonInfo> getSeasonInfo() async {
    final String _request = "seasons";
    try {
      var res = await _sendRequest(_request);
      return new ASeasonInfo.fromJson(res);
    } catch (e) {
      return new Future.error(e);
    }
  }

  Future<ASeason> getSeasonByPlayerId(String playerId, String season) async {
    final String _request = "players/$playerId/seasons/$season";
    try {
      var res = await _sendRequest(_request);
      return new ASeason.fromJson(res);
      
    } catch (e) {
      return new Future.error(e);
    }
  }

  Future<AMatch> getMatchById(String matchId) async {
    final String _request = "matches/$matchId";
    try {
      var res = await _sendRequest(_request);
      return new AMatch.fromJson(res);
    } catch(e) {
      return new Future.error(e);
    }
  }

  Future<TTelemetry> getMatchTelemetry(String telemetryURI) async {
    try {
      var res = await _sendRequestRaw(telemetryURI);
      var sortedTelem = groupBy((res as List), (resObj) => resObj["_T"]);
      return new TTelemetry.fromJson((sortedTelem as Map<String, dynamic>));
    } catch(e) {
      return new Future.error(e);
    }
  } 
}