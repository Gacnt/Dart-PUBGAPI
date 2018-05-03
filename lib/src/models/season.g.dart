// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

ASeason _$ASeasonFromJson(Map<String, dynamic> json) =>
    new ASeason(json['data'] == null
        ? null
        : new ASeasonData.fromJson(json['data'] as Map<String, dynamic>));

abstract class _$ASeasonSerializerMixin {
  ASeasonData get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}

ASeasonData _$ASeasonDataFromJson(Map<String, dynamic> json) => new ASeasonData(
    json['type'] as String,
    json['attributes'] == null
        ? null
        : new ASeasonDataAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>));

abstract class _$ASeasonDataSerializerMixin {
  String get type;
  ASeasonDataAttributes get attributes;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'type': type, 'attributes': attributes};
}

ASeasonDataAttributes _$ASeasonDataAttributesFromJson(
        Map<String, dynamic> json) =>
    new ASeasonDataAttributes(json['gameModeStats'] == null
        ? null
        : new ASeasonGameModeStats.fromJson(
            json['gameModeStats'] as Map<String, dynamic>));

abstract class _$ASeasonDataAttributesSerializerMixin {
  ASeasonGameModeStats get gameModeStats;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'gameModeStats': gameModeStats};
}

ASeasonGameModeStats _$ASeasonGameModeStatsFromJson(
        Map<String, dynamic> json) =>
    new ASeasonGameModeStats(
        json['duo'] == null
            ? null
            : new ASeasonMatchStats.fromJson(
                json['duo'] as Map<String, dynamic>),
        json['duo-fpp'] == null
            ? null
            : new ASeasonMatchStats.fromJson(
                json['duo-fpp'] as Map<String, dynamic>),
        json['solo'] == null
            ? null
            : new ASeasonMatchStats.fromJson(
                json['solo'] as Map<String, dynamic>),
        json['solo-fpp'] == null
            ? null
            : new ASeasonMatchStats.fromJson(
                json['solo-fpp'] as Map<String, dynamic>),
        json['squad'] == null
            ? null
            : new ASeasonMatchStats.fromJson(
                json['squad'] as Map<String, dynamic>),
        json['squad-fpp'] == null
            ? null
            : new ASeasonMatchStats.fromJson(
                json['squad-fpp'] as Map<String, dynamic>));

abstract class _$ASeasonGameModeStatsSerializerMixin {
  ASeasonMatchStats get duo;
  ASeasonMatchStats get duoFpp;
  ASeasonMatchStats get solo;
  ASeasonMatchStats get soloFpp;
  ASeasonMatchStats get squad;
  ASeasonMatchStats get squadFpp;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duo': duo,
        'duo-fpp': duoFpp,
        'solo': solo,
        'solo-fpp': soloFpp,
        'squad': squad,
        'squad-fpp': squadFpp
      };
}

ASeasonMatchStats _$ASeasonMatchStatsFromJson(Map<String, dynamic> json) =>
    new ASeasonMatchStats(
        json['assists'] as int,
        json['boosts'] as int,
        json['dBNOs'] as int,
        json['dailyKills'] as int,
        (json['damageDealt'] as num)?.toDouble(),
        json['days'] as int,
        json['headshotKills'] as int,
        json['heals'] as int,
        json['kills'] as int,
        (json['longestKill'] as num)?.toDouble(),
        (json['longestTimeSurvived'] as num)?.toDouble(),
        json['losses'] as int,
        json['maxKillStreaks'] as int,
        (json['mostSurvivalTime'] as num)?.toDouble(),
        json['revives'] as int,
        (json['rideDistance'] as num)?.toDouble(),
        json['roadKills'] as int,
        json['roundMostKills'] as int,
        json['roundsPlayed'] as int,
        json['suicides'] as int,
        json['teamKills'] as int,
        (json['timeSurvived'] as num)?.toDouble(),
        json['top10s'] as int,
        json['vehicleDestroys'] as int,
        (json['walkDistance'] as num)?.toDouble(),
        json['weaponAcquired'] as int,
        json['weeklyKills'] as int,
        (json['winPoints'] as num)?.toDouble(),
        (json['winRatio'] as num)?.toDouble(),
        json['wins'] as int)
      ..killPoints = (json['killPoints'] as num)?.toDouble();

abstract class _$ASeasonMatchStatsSerializerMixin {
  int get assists;
  int get boosts;
  int get dBNOs;
  int get dailyKills;
  double get damageDealt;
  int get days;
  int get headshotKills;
  int get heals;
  int get kills;
  double get killPoints;
  double get longestKill;
  double get longestTimeSurvived;
  int get losses;
  int get maxKillStreaks;
  double get mostSurvivalTime;
  int get revives;
  double get rideDistance;
  int get roadKills;
  int get roundMostKills;
  int get roundsPlayed;
  int get suicides;
  int get teamKills;
  double get timeSurvived;
  int get top10s;
  int get vehicleDestroys;
  double get walkDistance;
  int get weaponAcquired;
  int get weeklyKills;
  double get winPoints;
  double get winRatio;
  int get wins;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'assists': assists,
        'boosts': boosts,
        'dBNOs': dBNOs,
        'dailyKills': dailyKills,
        'damageDealt': damageDealt,
        'days': days,
        'headshotKills': headshotKills,
        'heals': heals,
        'kills': kills,
        'killPoints': killPoints,
        'longestKill': longestKill,
        'longestTimeSurvived': longestTimeSurvived,
        'losses': losses,
        'maxKillStreaks': maxKillStreaks,
        'mostSurvivalTime': mostSurvivalTime,
        'revives': revives,
        'rideDistance': rideDistance,
        'roadKills': roadKills,
        'roundMostKills': roundMostKills,
        'roundsPlayed': roundsPlayed,
        'suicides': suicides,
        'teamKills': teamKills,
        'timeSurvived': timeSurvived,
        'top10s': top10s,
        'vehicleDestroys': vehicleDestroys,
        'walkDistance': walkDistance,
        'weaponAcquired': weaponAcquired,
        'weeklyKills': weeklyKills,
        'winPoints': winPoints,
        'winRatio': winRatio,
        'wins': wins
      };
}

ASeasonInfo _$ASeasonInfoFromJson(Map<String, dynamic> json) =>
    new ASeasonInfo((json['data'] as List)
        ?.map((e) => e == null
            ? null
            : new ASeasonInfoObj.fromJson(e as Map<String, dynamic>))
        ?.toList());

abstract class _$ASeasonInfoSerializerMixin {
  List<ASeasonInfoObj> get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}

ASeasonInfoObj _$ASeasonInfoObjFromJson(Map<String, dynamic> json) =>
    new ASeasonInfoObj(
        json['type'] as String,
        json['id'] as String,
        json['attributes'] == null
            ? null
            : new ASeasonInfoAttributes.fromJson(
                json['attributes'] as Map<String, dynamic>));

abstract class _$ASeasonInfoObjSerializerMixin {
  String get type;
  String get id;
  ASeasonInfoAttributes get attributes;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'type': type, 'id': id, 'attributes': attributes};
}

ASeasonInfoAttributes _$ASeasonInfoAttributesFromJson(
        Map<String, dynamic> json) =>
    new ASeasonInfoAttributes(
        json['isCurrentSeason'] as bool, json['isOffseason'] as bool);

abstract class _$ASeasonInfoAttributesSerializerMixin {
  bool get isCurrentSeason;
  bool get isOffseason;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'isCurrentSeason': isCurrentSeason,
        'isOffseason': isOffseason
      };
}
