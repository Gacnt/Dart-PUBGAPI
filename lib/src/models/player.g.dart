// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

APlayer _$APlayerFromJson(Map<String, dynamic> json) =>
    new APlayer((json['data'] as List)
        ?.map((e) => e == null
            ? null
            : new APlayerData.fromJson(e as Map<String, dynamic>))
        ?.toList());

abstract class _$APlayerSerializerMixin {
  List<APlayerData> get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}

APlayerData _$APlayerDataFromJson(Map<String, dynamic> json) => new APlayerData(
    json['id'] as String,
    json['type'] as String,
    json['attributes'] == null
        ? null
        : new APlayerAttributes.fromJson(
            json['attributes'] as Map<String, dynamic>),
    json['links'] == null
        ? null
        : new APlayerLinks.fromJson(json['links'] as Map<String, dynamic>),
    json['relationships'] == null
        ? null
        : new APlayerRelationships.fromJson(
            json['relationships'] as Map<String, dynamic>));

abstract class _$APlayerDataSerializerMixin {
  String get id;
  String get type;
  APlayerAttributes get attributes;
  APlayerLinks get links;
  APlayerRelationships get relationships;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'type': type,
        'attributes': attributes,
        'links': links,
        'relationships': relationships
      };
}

APlayerAttributes _$APlayerAttributesFromJson(Map<String, dynamic> json) =>
    new APlayerAttributes(
        json['name'] as String,
        json['titleId'] as String,
        json['shardId'] as String,
        json['createdAt'] as String,
        json['updatedAt'] as String,
        json['patchVersion'] as String);

abstract class _$APlayerAttributesSerializerMixin {
  String get name;
  String get titleId;
  String get shardId;
  String get createdAt;
  String get updatedAt;
  String get patchVersion;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'titleId': titleId,
        'shardId': shardId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'patchVersion': patchVersion
      };
}

APlayerRelationships _$APlayerRelationshipsFromJson(
        Map<String, dynamic> json) =>
    new APlayerRelationships(json['matches'] == null
        ? null
        : new APlayerMatches.fromJson(json['matches'] as Map<String, dynamic>));

abstract class _$APlayerRelationshipsSerializerMixin {
  APlayerMatches get matches;
  Map<String, dynamic> toJson() => <String, dynamic>{'matches': matches};
}

APlayerMatches _$APlayerMatchesFromJson(Map<String, dynamic> json) =>
    new APlayerMatches((json['data'] as List)
        ?.map((e) => e == null
            ? null
            : new APlayerRelationshipAsset.fromJson(e as Map<String, dynamic>))
        ?.toList());

abstract class _$APlayerMatchesSerializerMixin {
  List<APlayerRelationshipAsset> get data;
  Map<String, dynamic> toJson() => <String, dynamic>{'data': data};
}

APlayerRelationshipAsset _$APlayerRelationshipAssetFromJson(
        Map<String, dynamic> json) =>
    new APlayerRelationshipAsset(json['type'] as String, json['id'] as String);

abstract class _$APlayerRelationshipAssetSerializerMixin {
  String get type;
  String get id;
  Map<String, dynamic> toJson() => <String, dynamic>{'type': type, 'id': id};
}

APlayerLinks _$APlayerLinksFromJson(Map<String, dynamic> json) =>
    new APlayerLinks(json['selflink'] as String, json['schema'] as String);

abstract class _$APlayerLinksSerializerMixin {
  String get selflink;
  String get schema;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'selflink': selflink, 'schema': schema};
}
