import 'package:json_annotation/json_annotation.dart';

part 'player.g.dart';

@JsonSerializable()
class APlayer extends Object with _$APlayerSerializerMixin {
  List<APlayerData> data;

  APlayer(this.data);

  factory APlayer.fromJson(Map<String, dynamic> json) => _$APlayerFromJson(json);
}

@JsonSerializable()
class APlayerData extends Object with _$APlayerDataSerializerMixin {
  String id;
  String type;
  APlayerAttributes attributes;
  APlayerLinks links;
  APlayerRelationships relationships;

  APlayerData(this.id, this.type, this.attributes, this.links, this.relationships);

  factory APlayerData.fromJson(Map<String, dynamic> json) => _$APlayerDataFromJson(json);
}

@JsonSerializable()
class APlayerAttributes extends Object with _$APlayerAttributesSerializerMixin {
  String name;
  String titleId;
  String shardId;
  String createdAt;
  String updatedAt;
  String patchVersion;

  APlayerAttributes(this.name, this.titleId, this.shardId, this.createdAt, this.updatedAt, this.patchVersion);

  factory APlayerAttributes.fromJson(Map<String, dynamic> json) => _$APlayerAttributesFromJson(json);
}

@JsonSerializable()
class APlayerRelationships extends Object with _$APlayerRelationshipsSerializerMixin {
  APlayerMatches matches;

  APlayerRelationships(this.matches);

  factory APlayerRelationships.fromJson(Map<String, dynamic> json) => _$APlayerRelationshipsFromJson(json);
}

@JsonSerializable()
class APlayerMatches extends Object with _$APlayerMatchesSerializerMixin {
  List<APlayerRelationshipAsset> data;

  APlayerMatches(this.data);

  factory APlayerMatches.fromJson(Map<String, dynamic> json) => _$APlayerMatchesFromJson(json);
}

@JsonSerializable()
class APlayerRelationshipAsset extends Object with _$APlayerRelationshipAssetSerializerMixin {
  String type;
  String id;

  APlayerRelationshipAsset(this.type, this.id);

  factory APlayerRelationshipAsset.fromJson(Map<String, dynamic> json) => _$APlayerRelationshipAssetFromJson(json);
}

@JsonSerializable()
class APlayerLinks extends Object with _$APlayerLinksSerializerMixin {
  String selflink;
  String schema;

  APlayerLinks(this.selflink, this.schema);

  factory APlayerLinks.fromJson(Map<String, dynamic> json) => _$APlayerLinksFromJson(json);
}