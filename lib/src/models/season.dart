import 'package:json_annotation/json_annotation.dart';

part 'season.g.dart';

@JsonSerializable()
class ASeason extends Object with _$ASeasonSerializerMixin {
  ASeasonData data;

  ASeason(this.data);

  factory ASeason.fromJson(Map<String, dynamic> json) => _$ASeasonFromJson(json);
}

@JsonSerializable()
class ASeasonData extends Object with _$ASeasonDataSerializerMixin {
  String type;
  ASeasonDataAttributes attributes;

  ASeasonData(this.type, this.attributes);

  factory ASeasonData.fromJson(Map<String, dynamic> json) => _$ASeasonDataFromJson(json);
  // Relationships;
}

@JsonSerializable()
class ASeasonDataAttributes extends Object with _$ASeasonDataAttributesSerializerMixin {
  ASeasonGameModeStats gameModeStats;

  ASeasonDataAttributes(this.gameModeStats);

  factory ASeasonDataAttributes.fromJson(Map<String, dynamic> json) => _$ASeasonDataAttributesFromJson(json);
}

@JsonSerializable()
class ASeasonGameModeStats extends Object with _$ASeasonGameModeStatsSerializerMixin {
  ASeasonMatchStats duo;

  @JsonKey(name: "duo-fpp")
  ASeasonMatchStats duoFpp;
  ASeasonMatchStats solo;

  @JsonKey(name: "solo-fpp")
  ASeasonMatchStats soloFpp;
  ASeasonMatchStats squad;

  @JsonKey(name: "squad-fpp")
  ASeasonMatchStats squadFpp;

  ASeasonGameModeStats(this.duo, this.duoFpp, this.solo, this.soloFpp, this.squad, this.squadFpp);
  factory ASeasonGameModeStats.fromJson(Map<String, dynamic> json) => _$ASeasonGameModeStatsFromJson(json);
}

@JsonSerializable()
class ASeasonMatchStats extends Object with _$ASeasonMatchStatsSerializerMixin {
  int assists;
  int boosts;
  int dBNOs;
  int dailyKills;
  double damageDealt;
  int days;
  int headshotKills;
  int heals;
  int kills;
  double killPoints;
  double longestKill;
  double longestTimeSurvived;
  int losses;
  int maxKillStreaks;
  double mostSurvivalTime;
  int revives;
  double rideDistance;
  int roadKills;
  int roundMostKills;
  int roundsPlayed;
  int suicides;
  int teamKills;
  double timeSurvived;
  int top10s;
  int vehicleDestroys;
  double walkDistance;
  int weaponAcquired;
  int weeklyKills;
  double winPoints;
  double winRatio;
  int wins;

  ASeasonMatchStats(this.assists, this.boosts, this.dBNOs, this.dailyKills, this.damageDealt, this.days, this.headshotKills, 
  this.heals, this.kills, this.longestKill, this.longestTimeSurvived, this.losses, this.maxKillStreaks, this.mostSurvivalTime, this.revives,
  this.rideDistance, this.roadKills, this.roundMostKills, this.roundsPlayed, this.suicides, this.teamKills, this.timeSurvived, this.top10s,
  this.vehicleDestroys, this.walkDistance, this.weaponAcquired, this.weeklyKills, this.winPoints, this.winRatio, this.wins);

  factory ASeasonMatchStats.fromJson(Map<String, dynamic> json) => _$ASeasonMatchStatsFromJson(json);
}

@JsonSerializable()
class ASeasonInfo extends Object with _$ASeasonInfoSerializerMixin {
  
  List<ASeasonInfoObj> data;

  ASeasonInfo(this.data);
  factory ASeasonInfo.fromJson(Map<String, dynamic> json) => _$ASeasonInfoFromJson(json);
}

@JsonSerializable()
class ASeasonInfoObj extends Object with _$ASeasonInfoObjSerializerMixin {
  
  String type;
  String id;
  ASeasonInfoAttributes attributes;

  ASeasonInfoObj(this.type, this.id, this.attributes);
  factory ASeasonInfoObj.fromJson(Map<String, dynamic> json) => _$ASeasonInfoObjFromJson(json);
}

@JsonSerializable()
class ASeasonInfoAttributes extends Object with _$ASeasonInfoAttributesSerializerMixin {
  
  bool isCurrentSeason;
  bool isOffseason;

  ASeasonInfoAttributes(this.isCurrentSeason, this.isOffseason);
  factory ASeasonInfoAttributes.fromJson(Map<String, dynamic> json) => _$ASeasonInfoAttributesFromJson(json);
}