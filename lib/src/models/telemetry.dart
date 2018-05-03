import 'package:json_annotation/json_annotation.dart';

part 'telemetry.g.dart';

@JsonSerializable()
class TTelemetry extends Object with _$TTelemetrySerializerMixin {
  
  @JsonKey(name: "LogPlayerLogin")
  List<TLogPlayerLogin> logPlayerLogin;
  @JsonKey(name: "LogPlayerCreate")
  List<TLogPlayerCreate> logPlayerCreate;
  @JsonKey(name: "LogPlayerPosition")
  List<TLogPlayerPosition> logPlayerPosition;
  @JsonKey(name: "LogPlayerAttack")
  List<TLogPlayerAttack> logPlayerAttack;
  @JsonKey(name: "LogItemPickup")
  List<TLogItemActions> logItemPickup;
  @JsonKey(name: "LogItemEquip")
  List<TLogItemActions> logItemEquip;
  @JsonKey(name: "LogItemUnequip")
  List<TLogItemActions> logItemUnequip;
  @JsonKey(name: "LogItemDrop")
  List<TLogItemActions> logItemDrop;
  @JsonKey(name: "LogItemUse")
  List<TLogItemActions> logItemUse;
  @JsonKey(name: "LogVehicleRide")
  List<TLogVehicleAction> logVehicleRide;
  @JsonKey(name: "LogVehicleLeave")
  List<TLogVehicleAction> logVehicleLeave;
  @JsonKey(name: "LogMatchDefinition")
  List<TLogMatchDefinition> logMatchDefinition;
  @JsonKey(name: "LogMatchStart")
  List<TLogMatchStartEnd> logMatchStart;
  @JsonKey(name: "LogMatchEnd")
  List<TLogMatchStartEnd> logMatchEnd;
  @JsonKey(name: "LogGameStatePeriodic")
  List<TLogGameStatePeriodic> logGameStatePeriodic;
  @JsonKey(name: "LogPlayerTakeDamage")
  List<TLogPlayerTakeDamage> logPlayerTakeDamage;
  @JsonKey(name: "LogPlayerKill")
  List<TLogPlayerKill> logPlayerKill;
  @JsonKey(name: "LogPlayerLogout")
  List<TLogPlayerLogout> logPlayerLogout;
  @JsonKey(name: "LogItemAttach")
  List<TLogItemAttachDetach> logItemAttach;
  @JsonKey(name: "LogItemDetach")
  List<TLogItemAttachDetach> logItemDetach;
  @JsonKey(name: "LogCarePackageSpawn")
  List<TLogCarePackageSpawnLand> logCarePackageSpawn;
  @JsonKey(name: "LogCarePackageLand")
  List<TLogCarePackageSpawnLand> logCarePackageLand;
  @JsonKey(name: "LogVehicleDestroy")
  List<TLogVehicleDestroy> logVehicleDestroy;


  
  TTelemetry(this.logPlayerLogin, this.logPlayerCreate, this.logPlayerPosition, this.logPlayerAttack,
  this.logItemPickup, this.logItemEquip, this.logItemUnequip, this.logItemDrop, this.logItemAttach, this.logItemDetach, this.logItemUse, 
  this.logVehicleDestroy, this.logVehicleLeave, this.logVehicleRide, this.logMatchDefinition, this.logCarePackageLand, this.logCarePackageSpawn, this.logGameStatePeriodic, 
  this.logMatchEnd, this.logMatchStart, this.logPlayerKill, this.logPlayerLogout, this.logPlayerTakeDamage);
  factory TTelemetry.fromJson(Map<String, dynamic> json) => _$TTelemetryFromJson(json);
}

class TCommon {

  String matchId;
  String mapName;
  double isGame;
}

@JsonSerializable()
class TItemPackage extends Object with _$TItemPackageSerializerMixin {

  String itemPackageId;
  TLocation location;
  List<TItem> items;

  TItemPackage(this.itemPackageId, this.location, this.items);
  factory TItemPackage.fromJson(Map<String, dynamic> json) => _$TItemPackageFromJson(json);
}

@JsonSerializable()
class TItem extends Object with _$TItemSerializerMixin {
  
  String itemId;
  int stackCount;
  String category;
  String subCategory;
  List<String> attachedItems;


  TItem(this.itemId, this.stackCount, this.category, this.subCategory, this.attachedItems);
  factory TItem.fromJson(Map<String, dynamic> json) => _$TItemFromJson(json);
}

@JsonSerializable()
class TLocation extends Object with _$TLocationSerializerMixin {
  
  double x;
  double y;
  double z;

  TLocation(this.x, this.y, this.z);
  factory TLocation.fromJson(Map<String, dynamic> json) => _$TLocationFromJson(json);
}

@JsonSerializable()
class TCharacter extends Object with _$TCharacterSerializerMixin {
  
  String name;
  int teamId;
  double health;
  TLocation location;
  int ranking;
  String accountId;

  TCharacter(this.name, this.teamId, this.health, this.location, this.ranking, this.accountId);
  factory TCharacter.fromJson(Map<String, dynamic> json) => _$TCharacterFromJson(json);
}

@JsonSerializable()
class TVehicle extends Object with _$TVehicleSerializerMixin {
  
  String vehicleType;
  String vehicleId;
  double healthPercentage;
  double fuelPercent;

  TVehicle(this.vehicleType, this.vehicleId, this.healthPercentage, this.fuelPercent);
  factory TVehicle.fromJson(Map<String, dynamic> json) => _$TVehicleFromJson(json);
}

@JsonSerializable()
class TGameState extends Object with _$TGameStateSerializerMixin {
  
  int elapsedTime;
  int numAliveTeams;
  int numJoinPlayers;
  int numStartPlayers;
  int numAlivePlayers;
  TLocation safetyZonePosition;
  double safetyZoneRadius;
  TLocation poisonGasWarningPosition;
  double posionGasWarningRadius;
  TLocation redZonePosition;
  double redZoneRadius;

  TGameState(this.elapsedTime, this.numAlivePlayers, this.numJoinPlayers, this.numStartPlayers, this.numAliveTeams, this.safetyZonePosition,
  this.safetyZoneRadius, this.poisonGasWarningPosition, this.posionGasWarningRadius, this.redZonePosition, this.redZoneRadius);
  factory TGameState.fromJson(Map<String, dynamic> json) => _$TGameStateFromJson(json);
}

@JsonSerializable()
class TLogPlayerLogin extends Object with _$TLogPlayerLoginSerializerMixin, TCommon {
  
  bool result;
  String errorMessage;
  String accountId;
  
  TLogPlayerLogin(this.result, this.errorMessage, this.accountId);
  factory TLogPlayerLogin.fromJson(Map<String, dynamic> json) => _$TLogPlayerLoginFromJson(json);
}

@JsonSerializable()
class TLogPlayerCreate extends Object with _$TLogPlayerCreateSerializerMixin, TCommon {
  
  TCharacter character;
  
  TLogPlayerCreate();
  factory TLogPlayerCreate.fromJson(Map<String, dynamic> json) => _$TLogPlayerCreateFromJson(json);
}

@JsonSerializable()
class TLogPlayerPosition extends Object with _$TLogPlayerPositionSerializerMixin, TCommon {
  
  TCharacter character;
  double elapsedTime;
  int numAlivePlayers;
  
  TLogPlayerPosition(this.character, this.elapsedTime, this.numAlivePlayers);
  factory TLogPlayerPosition.fromJson(Map<String, dynamic> json) => _$TLogPlayerPositionFromJson(json);
}

@JsonSerializable()
class TLogPlayerAttack extends Object with _$TLogPlayerAttackSerializerMixin, TCommon {

  int attackId;
  TCharacter attacker;
  String attacktype;
  TItem weapon;
  TVehicle vehicle;
  
  TLogPlayerAttack(this.attackId, this.attacker, this.attacktype, this.weapon, this.vehicle);
  factory TLogPlayerAttack.fromJson(Map<String, dynamic> json) => _$TLogPlayerAttackFromJson(json);
}


// TLogItemPickup, TLogItemEquip, TLogItemUnequip, TLogItemDrop, TLogItemUse
@JsonSerializable()
class TLogItemActions extends Object with _$TLogItemActionsSerializerMixin, TCommon {
  
  TCharacter character;
  TItem item;
  
  TLogItemActions(this.character, this.item);
  factory TLogItemActions.fromJson(Map<String, dynamic> json) => _$TLogItemActionsFromJson(json);
}


// TLogItemVehicleRide, TLogVehicleLeave
@JsonSerializable()
class TLogVehicleAction extends Object with _$TLogVehicleActionSerializerMixin, TCommon {
  
  TCharacter character;
  TVehicle vehicle;
  
  TLogVehicleAction(this.character, this.vehicle);
  factory TLogVehicleAction.fromJson(Map<String, dynamic> json) => _$TLogVehicleActionFromJson(json);
}


@JsonSerializable()
class TLogMatchDefinition extends Object with _$TLogMatchDefinitionSerializerMixin, TCommon {
  
  String matchId;
  String pingQuality;
  
  TLogMatchDefinition();
  factory TLogMatchDefinition.fromJson(Map<String, dynamic> json) => _$TLogMatchDefinitionFromJson(json);
}

// TLogMatchStart, TLogMatchEnd
@JsonSerializable()
class TLogMatchStartEnd extends Object with _$TLogMatchStartEndSerializerMixin, TCommon {
  
  List<TCharacter> characters;
  
  TLogMatchStartEnd(this.characters);
  factory TLogMatchStartEnd.fromJson(Map<String, dynamic> json) => _$TLogMatchStartEndFromJson(json);
}

@JsonSerializable()
class TLogGameStatePeriodic extends Object with _$TLogGameStatePeriodicSerializerMixin, TCommon {
  
  TGameState gameState;
  
  TLogGameStatePeriodic(this.gameState);
  factory TLogGameStatePeriodic.fromJson(Map<String, dynamic> json) => _$TLogGameStatePeriodicFromJson(json);
}

@JsonSerializable()
class TLogPlayerTakeDamage extends Object with _$TLogPlayerTakeDamageSerializerMixin, TCommon {
  
  int attackId;
  TCharacter attacker;
  TCharacter victim;
  String damageTypeCategory;
  String damageReason;
  double damage;
  String damageCauserName;
  
  TLogPlayerTakeDamage(this.attacker, this.attackId, this.victim, this.damageTypeCategory, this.damageReason, this.damage, this.damageCauserName);
  factory TLogPlayerTakeDamage.fromJson(Map<String, dynamic> json) => _$TLogPlayerTakeDamageFromJson(json);
}

@JsonSerializable()
class TLogPlayerLogout extends Object with _$TLogPlayerLogoutSerializerMixin {
  
  String accountId;
  
  TLogPlayerLogout(this.accountId);
  factory TLogPlayerLogout.fromJson(Map<String, dynamic> json) => _$TLogPlayerLogoutFromJson(json);
}

// TLogItemAttach, TLogItemDetach
@JsonSerializable()
class TLogItemAttachDetach extends Object with _$TLogItemAttachDetachSerializerMixin, TCommon {
  
  TCharacter character;
  TItem parentItem;
  TItem childItem;
  
  TLogItemAttachDetach(this.character, this.parentItem, this.childItem);
  factory TLogItemAttachDetach.fromJson(Map<String, dynamic> json) => _$TLogItemAttachDetachFromJson(json);
}

// TLogCarePackageSpawn, TLogCarePackageLand
@JsonSerializable()
class TLogCarePackageSpawnLand extends Object with _$TLogCarePackageSpawnLandSerializerMixin, TCommon {
  
  TItemPackage itemPackage;
  
  TLogCarePackageSpawnLand(this.itemPackage);
  factory TLogCarePackageSpawnLand.fromJson(Map<String, dynamic> json) => _$TLogCarePackageSpawnLandFromJson(json);
}

@JsonSerializable()
class TLogVehicleDestroy extends Object with _$TLogVehicleDestroySerializerMixin, TCommon {
  
  int attackId;
  TCharacter character;
  TVehicle vehicle;
  String damageTypeCategory;
  String damageCauserName;
  double distance;
  
  TLogVehicleDestroy(this.attackId, this.character, this.vehicle, this.damageCauserName, this.damageTypeCategory, this.distance);
  factory TLogVehicleDestroy.fromJson(Map<String, dynamic> json) => _$TLogVehicleDestroyFromJson(json);
}

@JsonSerializable()
class TLogPlayerKill extends Object with _$TLogPlayerKillSerializerMixin, TCommon {
  
  int attackId;
  TCharacter killer;
  TCharacter victim;
  String damageTypeCategory;
  String damageCauserName;
  double distance;
  
  TLogPlayerKill(this.attackId, this.killer, this.victim, this.damageCauserName, this.damageTypeCategory, this.distance);
  factory TLogPlayerKill.fromJson(Map<String, dynamic> json) => _$TLogPlayerKillFromJson(json);
}