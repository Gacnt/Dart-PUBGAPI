# pubgapi
A PUBGAPI Framework

## Usage

A simple usage example:

    import 'package:pubgapi/pubgapi.dart';

    main() {
      var api = PUBGAPI($APIKEY);

      await api.getPlayerByName($name);
      await api.getSeasonInfo();
      await api.getSeasonByPlayerId();
      await api.getMatchById($matchID);


    }

Player matches also support fetching the telemetry data for that match. So if you have a match object you can simply

    var match = await api.getMatchById($matchID);
    await match.loadTelemetryData(// Pass the PUBGAPI Instance);

    print(match.telemetry.logPlayerKills.length);

If you're uncertain how to use the API, feel free to browse the unit tests. Also to run the tests just provide your own API key to the tests.

## Features and bugs

Please file feature requests and bugs in the issues.