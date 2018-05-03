// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

TTelemetry _$TTelemetryFromJson(Map<String, dynamic> json) => new TTelemetry(
    (json['LogPlayerLogin'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogPlayerLogin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogPlayerCreate'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogPlayerCreate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogPlayerPosition'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogPlayerPosition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogPlayerAttack'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogPlayerAttack.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogItemPickup'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogItemActions.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogItemEquip'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogItemActions.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogItemUnequip'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogItemActions.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogItemDrop'] as List)
        ?.map((e) => e == null
            ? null
            : new TLogItemActions.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogItemAttach'] as List)
        ?.map((e) => e == null ? null : new TLogItemAttachDetach.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['LogItemDetach'] as List)?.map((e) => e == null ? null : new TLogItemAttachDetach.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogItemUse'] as List)?.map((e) => e == null ? null : new TLogItemActions.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogVehicleDestroy'] as List)?.map((e) => e == null ? null : new TLogVehicleDestroy.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogVehicleLeave'] as List)?.map((e) => e == null ? null : new TLogVehicleAction.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogVehicleRide'] as List)?.map((e) => e == null ? null : new TLogVehicleAction.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogMatchDefinition'] as List)?.map((e) => e == null ? null : new TLogMatchDefinition.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogCarePackageLand'] as List)?.map((e) => e == null ? null : new TLogCarePackageSpawnLand.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogCarePackageSpawn'] as List)?.map((e) => e == null ? null : new TLogCarePackageSpawnLand.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogGameStatePeriodic'] as List)?.map((e) => e == null ? null : new TLogGameStatePeriodic.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogMatchEnd'] as List)?.map((e) => e == null ? null : new TLogMatchStartEnd.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogMatchStart'] as List)?.map((e) => e == null ? null : new TLogMatchStartEnd.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogPlayerKill'] as List)?.map((e) => e == null ? null : new TLogPlayerKill.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogPlayerLogout'] as List)?.map((e) => e == null ? null : new TLogPlayerLogout.fromJson(e as Map<String, dynamic>))?.toList(),
    (json['LogPlayerTakeDamage'] as List)?.map((e) => e == null ? null : new TLogPlayerTakeDamage.fromJson(e as Map<String, dynamic>))?.toList());

abstract class _$TTelemetrySerializerMixin {
  List<TLogPlayerLogin> get logPlayerLogin;
  List<TLogPlayerCreate> get logPlayerCreate;
  List<TLogPlayerPosition> get logPlayerPosition;
  List<TLogPlayerAttack> get logPlayerAttack;
  List<TLogItemActions> get logItemPickup;
  List<TLogItemActions> get logItemEquip;
  List<TLogItemActions> get logItemUnequip;
  List<TLogItemActions> get logItemDrop;
  List<TLogItemActions> get logItemUse;
  List<TLogVehicleAction> get logVehicleRide;
  List<TLogVehicleAction> get logVehicleLeave;
  List<TLogMatchDefinition> get logMatchDefinition;
  List<TLogMatchStartEnd> get logMatchStart;
  List<TLogMatchStartEnd> get logMatchEnd;
  List<TLogGameStatePeriodic> get logGameStatePeriodic;
  List<TLogPlayerTakeDamage> get logPlayerTakeDamage;
  List<TLogPlayerKill> get logPlayerKill;
  List<TLogPlayerLogout> get logPlayerLogout;
  List<TLogItemAttachDetach> get logItemAttach;
  List<TLogItemAttachDetach> get logItemDetach;
  List<TLogCarePackageSpawnLand> get logCarePackageSpawn;
  List<TLogCarePackageSpawnLand> get logCarePackageLand;
  List<TLogVehicleDestroy> get logVehicleDestroy;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'LogPlayerLogin': logPlayerLogin,
        'LogPlayerCreate': logPlayerCreate,
        'LogPlayerPosition': logPlayerPosition,
        'LogPlayerAttack': logPlayerAttack,
        'LogItemPickup': logItemPickup,
        'LogItemEquip': logItemEquip,
        'LogItemUnequip': logItemUnequip,
        'LogItemDrop': logItemDrop,
        'LogItemUse': logItemUse,
        'LogVehicleRide': logVehicleRide,
        'LogVehicleLeave': logVehicleLeave,
        'LogMatchDefinition': logMatchDefinition,
        'LogMatchStart': logMatchStart,
        'LogMatchEnd': logMatchEnd,
        'LogGameStatePeriodic': logGameStatePeriodic,
        'LogPlayerTakeDamage': logPlayerTakeDamage,
        'LogPlayerKill': logPlayerKill,
        'LogPlayerLogout': logPlayerLogout,
        'LogItemAttach': logItemAttach,
        'LogItemDetach': logItemDetach,
        'LogCarePackageSpawn': logCarePackageSpawn,
        'LogCarePackageLand': logCarePackageLand,
        'LogVehicleDestroy': logVehicleDestroy
      };
}

TItemPackage _$TItemPackageFromJson(Map<String, dynamic> json) =>
    new TItemPackage(
        json['itemPackageId'] as String,
        json['location'] == null
            ? null
            : new TLocation.fromJson(json['location'] as Map<String, dynamic>),
        (json['items'] as List)
            ?.map((e) => e == null
                ? null
                : new TItem.fromJson(e as Map<String, dynamic>))
            ?.toList());

abstract class _$TItemPackageSerializerMixin {
  String get itemPackageId;
  TLocation get location;
  List<TItem> get items;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'itemPackageId': itemPackageId,
        'location': location,
        'items': items
      };
}

TItem _$TItemFromJson(Map<String, dynamic> json) => new TItem(
    json['itemId'] as String,
    json['stackCount'] as int,
    json['category'] as String,
    json['subCategory'] as String,
    (json['attachedItems'] as List)?.map((e) => e as String)?.toList());

abstract class _$TItemSerializerMixin {
  String get itemId;
  int get stackCount;
  String get category;
  String get subCategory;
  List<String> get attachedItems;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'itemId': itemId,
        'stackCount': stackCount,
        'category': category,
        'subCategory': subCategory,
        'attachedItems': attachedItems
      };
}

TLocation _$TLocationFromJson(Map<String, dynamic> json) => new TLocation(
    (json['x'] as num)?.toDouble(),
    (json['y'] as num)?.toDouble(),
    (json['z'] as num)?.toDouble());

abstract class _$TLocationSerializerMixin {
  double get x;
  double get y;
  double get z;
  Map<String, dynamic> toJson() => <String, dynamic>{'x': x, 'y': y, 'z': z};
}

TCharacter _$TCharacterFromJson(Map<String, dynamic> json) => new TCharacter(
    json['name'] as String,
    json['teamId'] as int,
    (json['health'] as num)?.toDouble(),
    json['location'] == null
        ? null
        : new TLocation.fromJson(json['location'] as Map<String, dynamic>),
    json['ranking'] as int,
    json['accountId'] as String);

abstract class _$TCharacterSerializerMixin {
  String get name;
  int get teamId;
  double get health;
  TLocation get location;
  int get ranking;
  String get accountId;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'teamId': teamId,
        'health': health,
        'location': location,
        'ranking': ranking,
        'accountId': accountId
      };
}

TVehicle _$TVehicleFromJson(Map<String, dynamic> json) => new TVehicle(
    json['vehicleType'] as String,
    json['vehicleId'] as String,
    (json['healthPercentage'] as num)?.toDouble(),
    (json['fuelPercent'] as num)?.toDouble());

abstract class _$TVehicleSerializerMixin {
  String get vehicleType;
  String get vehicleId;
  double get healthPercentage;
  double get fuelPercent;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'vehicleType': vehicleType,
        'vehicleId': vehicleId,
        'healthPercentage': healthPercentage,
        'fuelPercent': fuelPercent
      };
}

TGameState _$TGameStateFromJson(Map<String, dynamic> json) => new TGameState(
    json['elapsedTime'] as int,
    json['numAlivePlayers'] as int,
    json['numJoinPlayers'] as int,
    json['numStartPlayers'] as int,
    json['numAliveTeams'] as int,
    json['safetyZonePosition'] == null
        ? null
        : new TLocation.fromJson(
            json['safetyZonePosition'] as Map<String, dynamic>),
    (json['safetyZoneRadius'] as num)?.toDouble(),
    json['poisonGasWarningPosition'] == null
        ? null
        : new TLocation.fromJson(
            json['poisonGasWarningPosition'] as Map<String, dynamic>),
    (json['posionGasWarningRadius'] as num)?.toDouble(),
    json['redZonePosition'] == null
        ? null
        : new TLocation.fromJson(
            json['redZonePosition'] as Map<String, dynamic>),
    (json['redZoneRadius'] as num)?.toDouble());

abstract class _$TGameStateSerializerMixin {
  int get elapsedTime;
  int get numAliveTeams;
  int get numJoinPlayers;
  int get numStartPlayers;
  int get numAlivePlayers;
  TLocation get safetyZonePosition;
  double get safetyZoneRadius;
  TLocation get poisonGasWarningPosition;
  double get posionGasWarningRadius;
  TLocation get redZonePosition;
  double get redZoneRadius;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'elapsedTime': elapsedTime,
        'numAliveTeams': numAliveTeams,
        'numJoinPlayers': numJoinPlayers,
        'numStartPlayers': numStartPlayers,
        'numAlivePlayers': numAlivePlayers,
        'safetyZonePosition': safetyZonePosition,
        'safetyZoneRadius': safetyZoneRadius,
        'poisonGasWarningPosition': poisonGasWarningPosition,
        'posionGasWarningRadius': posionGasWarningRadius,
        'redZonePosition': redZonePosition,
        'redZoneRadius': redZoneRadius
      };
}

TLogPlayerLogin _$TLogPlayerLoginFromJson(Map<String, dynamic> json) =>
    new TLogPlayerLogin(json['result'] as bool, json['errorMessage'] as String,
        json['accountId'] as String)
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogPlayerLoginSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  bool get result;
  String get errorMessage;
  String get accountId;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'result': result,
        'errorMessage': errorMessage,
        'accountId': accountId
      };
}

TLogPlayerCreate _$TLogPlayerCreateFromJson(Map<String, dynamic> json) =>
    new TLogPlayerCreate()
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble()
      ..character = json['character'] == null
          ? null
          : new TCharacter.fromJson(json['character'] as Map<String, dynamic>);

abstract class _$TLogPlayerCreateSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  TCharacter get character;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'character': character
      };
}

TLogPlayerPosition _$TLogPlayerPositionFromJson(Map<String, dynamic> json) =>
    new TLogPlayerPosition(
        json['character'] == null
            ? null
            : new TCharacter.fromJson(
                json['character'] as Map<String, dynamic>),
        (json['elapsedTime'] as num)?.toDouble(),
        json['numAlivePlayers'] as int)
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogPlayerPositionSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  TCharacter get character;
  double get elapsedTime;
  int get numAlivePlayers;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'character': character,
        'elapsedTime': elapsedTime,
        'numAlivePlayers': numAlivePlayers
      };
}

TLogPlayerAttack _$TLogPlayerAttackFromJson(Map<String, dynamic> json) =>
    new TLogPlayerAttack(
        json['attackId'] as int,
        json['attacker'] == null
            ? null
            : new TCharacter.fromJson(json['attacker'] as Map<String, dynamic>),
        json['attacktype'] as String,
        json['weapon'] == null
            ? null
            : new TItem.fromJson(json['weapon'] as Map<String, dynamic>),
        json['vehicle'] == null
            ? null
            : new TVehicle.fromJson(json['vehicle'] as Map<String, dynamic>))
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogPlayerAttackSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  int get attackId;
  TCharacter get attacker;
  String get attacktype;
  TItem get weapon;
  TVehicle get vehicle;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'attackId': attackId,
        'attacker': attacker,
        'attacktype': attacktype,
        'weapon': weapon,
        'vehicle': vehicle
      };
}

TLogItemActions _$TLogItemActionsFromJson(Map<String, dynamic> json) =>
    new TLogItemActions(
        json['character'] == null
            ? null
            : new TCharacter.fromJson(
                json['character'] as Map<String, dynamic>),
        json['item'] == null
            ? null
            : new TItem.fromJson(json['item'] as Map<String, dynamic>))
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogItemActionsSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  TCharacter get character;
  TItem get item;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'character': character,
        'item': item
      };
}

TLogVehicleAction _$TLogVehicleActionFromJson(Map<String, dynamic> json) =>
    new TLogVehicleAction(
        json['character'] == null
            ? null
            : new TCharacter.fromJson(
                json['character'] as Map<String, dynamic>),
        json['vehicle'] == null
            ? null
            : new TVehicle.fromJson(json['vehicle'] as Map<String, dynamic>))
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogVehicleActionSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  TCharacter get character;
  TVehicle get vehicle;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'character': character,
        'vehicle': vehicle
      };
}

TLogMatchDefinition _$TLogMatchDefinitionFromJson(Map<String, dynamic> json) =>
    new TLogMatchDefinition()
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble()
      ..pingQuality = json['pingQuality'] as String;

abstract class _$TLogMatchDefinitionSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  String get pingQuality;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'pingQuality': pingQuality
      };
}

TLogMatchStartEnd _$TLogMatchStartEndFromJson(Map<String, dynamic> json) =>
    new TLogMatchStartEnd((json['characters'] as List)
        ?.map((e) => e == null
            ? null
            : new TCharacter.fromJson(e as Map<String, dynamic>))
        ?.toList())
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogMatchStartEndSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  List<TCharacter> get characters;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'characters': characters
      };
}

TLogGameStatePeriodic _$TLogGameStatePeriodicFromJson(
        Map<String, dynamic> json) =>
    new TLogGameStatePeriodic(json['gameState'] == null
        ? null
        : new TGameState.fromJson(json['gameState'] as Map<String, dynamic>))
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogGameStatePeriodicSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  TGameState get gameState;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'gameState': gameState
      };
}

TLogPlayerTakeDamage _$TLogPlayerTakeDamageFromJson(
        Map<String, dynamic> json) =>
    new TLogPlayerTakeDamage(
        json['attacker'] == null
            ? null
            : new TCharacter.fromJson(json['attacker'] as Map<String, dynamic>),
        json['attackId'] as int,
        json['victim'] == null
            ? null
            : new TCharacter.fromJson(json['victim'] as Map<String, dynamic>),
        json['damageTypeCategory'] as String,
        json['damageReason'] as String,
        (json['damage'] as num)?.toDouble(),
        json['damageCauserName'] as String)
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogPlayerTakeDamageSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  int get attackId;
  TCharacter get attacker;
  TCharacter get victim;
  String get damageTypeCategory;
  String get damageReason;
  double get damage;
  String get damageCauserName;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'attackId': attackId,
        'attacker': attacker,
        'victim': victim,
        'damageTypeCategory': damageTypeCategory,
        'damageReason': damageReason,
        'damage': damage,
        'damageCauserName': damageCauserName
      };
}

TLogPlayerLogout _$TLogPlayerLogoutFromJson(Map<String, dynamic> json) =>
    new TLogPlayerLogout(json['accountId'] as String);

abstract class _$TLogPlayerLogoutSerializerMixin {
  String get accountId;
  Map<String, dynamic> toJson() => <String, dynamic>{'accountId': accountId};
}

TLogItemAttachDetach _$TLogItemAttachDetachFromJson(
        Map<String, dynamic> json) =>
    new TLogItemAttachDetach(
        json['character'] == null
            ? null
            : new TCharacter.fromJson(
                json['character'] as Map<String, dynamic>),
        json['parentItem'] == null
            ? null
            : new TItem.fromJson(json['parentItem'] as Map<String, dynamic>),
        json['childItem'] == null
            ? null
            : new TItem.fromJson(json['childItem'] as Map<String, dynamic>))
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogItemAttachDetachSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  TCharacter get character;
  TItem get parentItem;
  TItem get childItem;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'character': character,
        'parentItem': parentItem,
        'childItem': childItem
      };
}

TLogCarePackageSpawnLand _$TLogCarePackageSpawnLandFromJson(
        Map<String, dynamic> json) =>
    new TLogCarePackageSpawnLand(json['itemPackage'] == null
        ? null
        : new TItemPackage.fromJson(
            json['itemPackage'] as Map<String, dynamic>))
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogCarePackageSpawnLandSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  TItemPackage get itemPackage;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'itemPackage': itemPackage
      };
}

TLogVehicleDestroy _$TLogVehicleDestroyFromJson(Map<String, dynamic> json) =>
    new TLogVehicleDestroy(
        json['attackId'] as int,
        json['character'] == null
            ? null
            : new TCharacter.fromJson(
                json['character'] as Map<String, dynamic>),
        json['vehicle'] == null
            ? null
            : new TVehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
        json['damageCauserName'] as String,
        json['damageTypeCategory'] as String,
        (json['distance'] as num)?.toDouble())
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogVehicleDestroySerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  int get attackId;
  TCharacter get character;
  TVehicle get vehicle;
  String get damageTypeCategory;
  String get damageCauserName;
  double get distance;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'attackId': attackId,
        'character': character,
        'vehicle': vehicle,
        'damageTypeCategory': damageTypeCategory,
        'damageCauserName': damageCauserName,
        'distance': distance
      };
}

TLogPlayerKill _$TLogPlayerKillFromJson(Map<String, dynamic> json) =>
    new TLogPlayerKill(
        json['attackId'] as int,
        json['killer'] == null
            ? null
            : new TCharacter.fromJson(json['killer'] as Map<String, dynamic>),
        json['victim'] == null
            ? null
            : new TCharacter.fromJson(json['victim'] as Map<String, dynamic>),
        json['damageCauserName'] as String,
        json['damageTypeCategory'] as String,
        (json['distance'] as num)?.toDouble())
      ..matchId = json['matchId'] as String
      ..mapName = json['mapName'] as String
      ..isGame = (json['isGame'] as num)?.toDouble();

abstract class _$TLogPlayerKillSerializerMixin {
  String get matchId;
  String get mapName;
  double get isGame;
  int get attackId;
  TCharacter get killer;
  TCharacter get victim;
  String get damageTypeCategory;
  String get damageCauserName;
  double get distance;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'matchId': matchId,
        'mapName': mapName,
        'isGame': isGame,
        'attackId': attackId,
        'killer': killer,
        'victim': victim,
        'damageTypeCategory': damageTypeCategory,
        'damageCauserName': damageCauserName,
        'distance': distance
      };
}
