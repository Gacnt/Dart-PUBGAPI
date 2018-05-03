import 'package:json_annotation/json_annotation.dart';
import 'dart:async';
import 'telemetry.dart';
import 'package:pubgapi/pubgapi.dart';

part 'match.g.dart';

@JsonSerializable()
class AMatch extends Object with _$AMatchSerializerMixin {
  
  AMatchData data;
  List<AMatchIncluded> included;
  TTelemetry telemetry;
  // Links
  // Meta

  Future<bool> loadTelemetryData(PUBGAPI pubgapi) async {
    for (var inc in this.included) {
      if (inc.attributes.name == "telemetry") {
        var url = inc.attributes.url;
        try {
          var telemetry = await pubgapi.getMatchTelemetry(url);
          this.telemetry = telemetry;
        } catch(e) {
          print(e);
        }
      } else {
        continue;
      }
    }
  }

  AMatch(this.data, this.included);
  factory AMatch.fromJson(Map<String, dynamic> json) => _$AMatchFromJson(json);
}

@JsonSerializable()
class AMatchData extends Object with _$AMatchDataSerializerMixin {
  
  String type;
  String id;
  AMatchDataAttributes attributes;
  AMatchDataRelationships relationships;
  // Links

  AMatchData(this.type, this.id, this.attributes, this.relationships);
  factory AMatchData.fromJson(Map<String, dynamic> json) => _$AMatchDataFromJson(json);
}

@JsonSerializable()
class AMatchDataAttributes extends Object with _$AMatchDataAttributesSerializerMixin {
  
  String createdAt;
  int duration;
  // stats - API does not support yet
  String gameMode;
  String titleId;
  String shardId;
  // tags - API Does not support yet
  String mapName;

  AMatchDataAttributes(this.createdAt, this.duration, this.gameMode, this.titleId, this.shardId, this.mapName);
  factory AMatchDataAttributes.fromJson(Map<String, dynamic> json) => _$AMatchDataAttributesFromJson(json);
}

@JsonSerializable()
class AMatchDataRelationships extends Object with _$AMatchDataRelationshipsSerializerMixin {
  
  AMatchDataRelationshipRosterAsset roster;
  AMatchDataRelationshipRosterAsset assets;

  AMatchDataRelationships(this.roster, this.assets);
  factory AMatchDataRelationships.fromJson(Map<String, dynamic> json) => _$AMatchDataRelationshipsFromJson(json);
} 

@JsonSerializable()
class AMatchDataRelationshipRosterAsset extends Object with _$AMatchDataRelationshipRosterAssetSerializerMixin {
  
  List<AMatchDataRelationshipsRosterAssetData> data;

  AMatchDataRelationshipRosterAsset(this.data);
  factory AMatchDataRelationshipRosterAsset.fromJson(Map<String, dynamic> json) => _$AMatchDataRelationshipRosterAssetFromJson(json);
}

@JsonSerializable()
class AMatchDataRelationshipsRosterAssetData extends Object with _$AMatchDataRelationshipsRosterAssetDataSerializerMixin {
  
  String type;
  String id;

  AMatchDataRelationshipsRosterAssetData(this.type, this.id);
  factory AMatchDataRelationshipsRosterAssetData.fromJson(Map<String, dynamic> json) => _$AMatchDataRelationshipsRosterAssetDataFromJson(json);
}

@JsonSerializable()
class AMatchIncluded extends Object with _$AMatchIncludedSerializerMixin {
  
  String type;
  String id;
  AMatchIncludedAttributes attributes;
  AMatchIncludedRelationships relationships;

  AMatchIncluded(this.type, this.id, this.attributes, this.relationships);
  factory AMatchIncluded.fromJson(Map<String, dynamic> json) => _$AMatchIncludedFromJson(json);
}

@JsonSerializable()
class AMatchIncludedRelationships extends Object with _$AMatchIncludedRelationshipsSerializerMixin {
  
  // Team
  AMatchIncludedRelationshipsParticipants participants;

  AMatchIncludedRelationships(this.participants);
  factory AMatchIncludedRelationships.fromJson(Map<String, dynamic> json) => _$AMatchIncludedRelationshipsFromJson(json);
}

@JsonSerializable()
class AMatchIncludedRelationshipsParticipants extends Object with _$AMatchIncludedRelationshipsParticipantsSerializerMixin {
  
  List<AMatchDataRelationshipsRosterAssetData> data;

  AMatchIncludedRelationshipsParticipants(this.data);
  factory AMatchIncludedRelationshipsParticipants.fromJson(Map<String, dynamic> json) => _$AMatchIncludedRelationshipsParticipantsFromJson(json);
}


@JsonSerializable()
class AMatchIncludedAttributes extends Object with _$AMatchIncludedAttributesSerializerMixin {
  
  AMatchIncludedAttributesStats stats;
  String shardId;
  String won;

  @JsonKey(name: "URL")
  String url;
  String name;
  String createdAt;

  AMatchIncludedAttributes(this.stats, this.shardId, this.won, this.url, this.name, this.createdAt);
  factory AMatchIncludedAttributes.fromJson(Map<String, dynamic> json) => _$AMatchIncludedAttributesFromJson(json);
}

@JsonSerializable()
class AMatchIncludedAttributesStats extends Object with _$AMatchIncludedAttributesStatsSerializerMixin {
  
  int weaponsAcquired;
  int roadKills;
  int vehicleDestroys;
  int lastKillPoints;
  int kills;
  int winPlace;
  int heals;
  int headshotKills;
  int longestKill;
  int timeSurvived;
  double damageDealt;
  int assists;
  int boosts;
  String name;
  int revives;
  double winPointsDelta;
  double killPointsDelta;
  int winPoints;
  int mostDamage;
  String playerId;
  int lastWinPoints;
  double walkDistance;
  int killPlace;

  @JsonKey(name: "DBNOs")
  int dbnos;

  int killStreaks;
  String deathType;
  int killPoints;
  int teamKills;
  double rideDistance;
  int teamId;
  int rank;
  
  AMatchIncludedAttributesStats(this.weaponsAcquired, this.roadKills, this.vehicleDestroys, this.lastKillPoints, this.kills, 
  this.winPlace, this.heals, this.headshotKills, this.longestKill, this.timeSurvived, this.damageDealt, this.assists, this.boosts, 
  this.name, this.revives, this.winPointsDelta, this.killPointsDelta, this.winPoints, this.mostDamage, this.playerId, this.lastWinPoints, 
  this.walkDistance, this.killPlace);

  factory AMatchIncludedAttributesStats.fromJson(Map<String, dynamic> json) => _$AMatchIncludedAttributesStatsFromJson(json);
}