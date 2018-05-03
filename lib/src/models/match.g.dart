// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

AMatch _$AMatchFromJson(Map<String, dynamic> json) => new AMatch(
    json['data'] == null
        ? null
        : new AMatchData.fromJson(json['data'] as Map<String, dynamic>),
    (json['included'] as List)
        ?.map((e) => e == null
            ? null
            : new AMatchIncluded.fromJson(e as Map<String, dynamic>))
        ?.toList())
  ..telemetry = json['telemetry'] == null
      ? null
      : new TTelemetry.fromJson(json['telemetry'] as Map<String, dynamic>);

abstract class _$AMatchSerializerMixin {
  AMatchData get data;
  List<AMatchIncluded> get included;
  TTelemetry get telemetry;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        'included': included,
        'telemetry': telemetry
      };
}

AMatchData _$AMatchDataFromJson(Map<String, dynamic> json) => new AMatchData(
    json['type'] as String,
    json['id'] as String,
    json['attributes'] == null
        ? null
        : new AMatchDataAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    json['relationships'] == null
        ? null
        : new AMatchDataRelationships.fromJson(
            json['relationships'] as Map<String, dynamic>));

abstract class _$AMatchDataSerializerMixin {
  String get type;
  String get id;
  AMatchDataAttributes get attributes;
  AMatchDataRelationships get relationships;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'id': id,
        'attributes': attributes,
        'relationships': relationships
      };
}

AMatchDataAttributes _$AMatchDataAttributesFromJson(
        Map<String, dynamic> json) =>
    new AMatchDataAttributes(
        json['createdAt'] as String,
        json['duration'] as int,
        json['gameMode'] as String,
        json['titleId'] as String,
        json['shardId'] as String,
        json['mapName'] as String);

abstract class _$AMatchDataAttributesSerializerMixin {
  String get createdAt;
  int get duration;
  String get gameMode;
  String get titleId;
  String get shardId;
  String get mapName;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'createdAt': createdAt,
        'duration': duration,
        'gameMode': gameMode,
        'titleId': titleId,
        'shardId': shardId,
        'mapName': mapName
      };
}

AMatchDataRelationships _$AMatchDataRelationshipsFromJson(
        Map<String, dynamic> json) =>
    new AMatchDataRelationships(
        json['roster'] == null
            ? null
            : new AMatchDataRelationshipRosterAsset.fromJson(
                json['roster'] as Map<String, dynamic>),
        json['assets'] == null
            ? null
            : new AMatchDataRelationshipRosterAsset.fromJson(
                json['assets'] as Map<String, dynamic>));

abstract class _$AMatchDataRelationshipsSerializerMixin {
  AMatchDataRelationshipRosterAsset get roster;
  AMatchDataRelationshipRosterAsset get assets;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'roster': roster, 'assets': assets};
}

AMatchDataRelationshipRosterAsset _$AMatchDataRelationshipRosterAssetFromJson(
        Map<String, dynamic> json) =>
    new AMatchDataRelationshipRosterAsset((json['data'] as List)
        ?.map((e) => e == null
            ? null
            : new AMatchDataRelationshipsRosterAssetData.fromJson(
                e as Map<String, dynamic>))
        ?.toList());

abstract class _$AMatchDataRelationshipRosterAssetSerializerMixin {
  List<AMatchDataRelationshipsRosterAssetData> get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}

AMatchDataRelationshipsRosterAssetData
    _$AMatchDataRelationshipsRosterAssetDataFromJson(
            Map<String, dynamic> json) =>
        new AMatchDataRelationshipsRosterAssetData(
            json['type'] as String, json['id'] as String);

abstract class _$AMatchDataRelationshipsRosterAssetDataSerializerMixin {
  String get type;
  String get id;
  Map<String, dynamic> toJson() => <String, dynamic>{'type': type, 'id': id};
}

AMatchIncluded _$AMatchIncludedFromJson(Map<String, dynamic> json) =>
    new AMatchIncluded(
        json['type'] as String,
        json['id'] as String,
        json['attributes'] == null
            ? null
            : new AMatchIncludedAttributes.fromJson(
                json['attributes'] as Map<String, dynamic>),
        json['relationships'] == null
            ? null
            : new AMatchIncludedRelationships.fromJson(
                json['relationships'] as Map<String, dynamic>));

abstract class _$AMatchIncludedSerializerMixin {
  String get type;
  String get id;
  AMatchIncludedAttributes get attributes;
  AMatchIncludedRelationships get relationships;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'id': id,
        'attributes': attributes,
        'relationships': relationships
      };
}

AMatchIncludedRelationships _$AMatchIncludedRelationshipsFromJson(
        Map<String, dynamic> json) =>
    new AMatchIncludedRelationships(json['participants'] == null
        ? null
        : new AMatchIncludedRelationshipsParticipants.fromJson(
            json['participants'] as Map<String, dynamic>));

abstract class _$AMatchIncludedRelationshipsSerializerMixin {
  AMatchIncludedRelationshipsParticipants get participants;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'participants': participants};
}

AMatchIncludedRelationshipsParticipants
    _$AMatchIncludedRelationshipsParticipantsFromJson(
            Map<String, dynamic> json) =>
        new AMatchIncludedRelationshipsParticipants((json['data'] as List)
            ?.map((e) => e == null
                ? null
                : new AMatchDataRelationshipsRosterAssetData.fromJson(
                    e as Map<String, dynamic>))
            ?.toList());

abstract class _$AMatchIncludedRelationshipsParticipantsSerializerMixin {
  List<AMatchDataRelationshipsRosterAssetData> get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}

AMatchIncludedAttributes _$AMatchIncludedAttributesFromJson(
        Map<String, dynamic> json) =>
    new AMatchIncludedAttributes(
        json['stats'] == null
            ? null
            : new AMatchIncludedAttributesStats.fromJson(
                json['stats'] as Map<String, dynamic>),
        json['shardId'] as String,
        json['won'] as String,
        json['URL'] as String,
        json['name'] as String,
        json['createdAt'] as String);

abstract class _$AMatchIncludedAttributesSerializerMixin {
  AMatchIncludedAttributesStats get stats;
  String get shardId;
  String get won;
  String get url;
  String get name;
  String get createdAt;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'stats': stats,
        'shardId': shardId,
        'won': won,
        'URL': url,
        'name': name,
        'createdAt': createdAt
      };
}

AMatchIncludedAttributesStats _$AMatchIncludedAttributesStatsFromJson(
        Map<String, dynamic> json) =>
    new AMatchIncludedAttributesStats(
        json['weaponsAcquired'] as int,
        json['roadKills'] as int,
        json['vehicleDestroys'] as int,
        json['lastKillPoints'] as int,
        json['kills'] as int,
        json['winPlace'] as int,
        json['heals'] as int,
        json['headshotKills'] as int,
        json['longestKill'] as int,
        json['timeSurvived'] as int,
        (json['damageDealt'] as num)?.toDouble(),
        json['assists'] as int,
        json['boosts'] as int,
        json['name'] as String,
        json['revives'] as int,
        (json['winPointsDelta'] as num)?.toDouble(),
        (json['killPointsDelta'] as num)?.toDouble(),
        json['winPoints'] as int,
        json['mostDamage'] as int,
        json['playerId'] as String,
        json['lastWinPoints'] as int,
        (json['walkDistance'] as num)?.toDouble(),
        json['killPlace'] as int)
      ..dbnos = json['DBNOs'] as int
      ..killStreaks = json['killStreaks'] as int
      ..deathType = json['deathType'] as String
      ..killPoints = json['killPoints'] as int
      ..teamKills = json['teamKills'] as int
      ..rideDistance = (json['rideDistance'] as num)?.toDouble()
      ..teamId = json['teamId'] as int
      ..rank = json['rank'] as int;

abstract class _$AMatchIncludedAttributesStatsSerializerMixin {
  int get weaponsAcquired;
  int get roadKills;
  int get vehicleDestroys;
  int get lastKillPoints;
  int get kills;
  int get winPlace;
  int get heals;
  int get headshotKills;
  int get longestKill;
  int get timeSurvived;
  double get damageDealt;
  int get assists;
  int get boosts;
  String get name;
  int get revives;
  double get winPointsDelta;
  double get killPointsDelta;
  int get winPoints;
  int get mostDamage;
  String get playerId;
  int get lastWinPoints;
  double get walkDistance;
  int get killPlace;
  int get dbnos;
  int get killStreaks;
  String get deathType;
  int get killPoints;
  int get teamKills;
  double get rideDistance;
  int get teamId;
  int get rank;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'weaponsAcquired': weaponsAcquired,
        'roadKills': roadKills,
        'vehicleDestroys': vehicleDestroys,
        'lastKillPoints': lastKillPoints,
        'kills': kills,
        'winPlace': winPlace,
        'heals': heals,
        'headshotKills': headshotKills,
        'longestKill': longestKill,
        'timeSurvived': timeSurvived,
        'damageDealt': damageDealt,
        'assists': assists,
        'boosts': boosts,
        'name': name,
        'revives': revives,
        'winPointsDelta': winPointsDelta,
        'killPointsDelta': killPointsDelta,
        'winPoints': winPoints,
        'mostDamage': mostDamage,
        'playerId': playerId,
        'lastWinPoints': lastWinPoints,
        'walkDistance': walkDistance,
        'killPlace': killPlace,
        'DBNOs': dbnos,
        'killStreaks': killStreaks,
        'deathType': deathType,
        'killPoints': killPoints,
        'teamKills': teamKills,
        'rideDistance': rideDistance,
        'teamId': teamId,
        'rank': rank
      };
}
