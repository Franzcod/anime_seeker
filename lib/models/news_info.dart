// // To parse this JSON data, do
//
//     final mangaModel = mangaModelFromJson(jsonString);

import 'dart:convert';

MangaModel mangaModelFromJson(String str) =>
    MangaModel.fromJson(json.decode(str));

String mangaModelToJson(MangaModel data) => json.encode(data.toJson());

class MangaModel {
  MangaModel({
    this.data,
    this.meta,
    this.links,
  });

  List<Datum> data;
  MangaModelMeta meta;
  MangaModelLinks links;

  factory MangaModel.fromJson(Map<String, dynamic> json) => MangaModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: MangaModelMeta.fromJson(json["meta"]),
        links: MangaModelLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
        "links": links.toJson(),
      };
}

class Datum {
  Datum({
    this.id,
    this.type,
    this.links,
    this.attributes,
    this.relationships,
  });

  String id;
  Type type;
  DatumLinks links;
  Attributes attributes;
  Map<String, Relationship> relationships;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        type: typeValues.map[json["type"]],
        links: DatumLinks.fromJson(json["links"]),
        attributes: Attributes.fromJson(json["attributes"]),
        relationships: Map.from(json["relationships"]).map((k, v) =>
            MapEntry<String, Relationship>(k, Relationship.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": typeValues.reverse[type],
        "links": links.toJson(),
        "attributes": attributes.toJson(),
        "relationships": Map.from(relationships)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Attributes {
  Attributes({
    this.createdAt,
    this.updatedAt,
    this.slug,
    this.synopsis,
    this.description,
    this.coverImageTopOffset,
    this.titles,
    this.canonicalTitle,
    this.abbreviatedTitles,
    this.averageRating,
    this.ratingFrequencies,
    this.userCount,
    this.favoritesCount,
    this.startDate,
    this.endDate,
    this.nextRelease,
    this.popularityRank,
    this.ratingRank,
    this.ageRating,
    this.ageRatingGuide,
    this.subtype,
    this.status,
    this.tba,
    this.posterImage,
    this.coverImage,
    this.chapterCount,
    this.volumeCount,
    this.serialization,
    this.mangaType,
  });

  DateTime createdAt;
  DateTime updatedAt;
  String slug;
  String synopsis;
  String description;
  int coverImageTopOffset;
  Titles titles;
  String canonicalTitle;
  List<String> abbreviatedTitles;
  String averageRating;
  Map<String, String> ratingFrequencies;
  int userCount;
  int favoritesCount;
  DateTime startDate;
  DateTime endDate;
  dynamic nextRelease;
  int popularityRank;
  int ratingRank;
  String ageRating;
  String ageRatingGuide;
  Type subtype;
  Status status;
  String tba;
  PosterImage posterImage;
  CoverImage coverImage;
  int chapterCount;
  int volumeCount;
  String serialization;
  Type mangaType;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        slug: json["slug"],
        synopsis: json["synopsis"],
        description: json["description"],
        coverImageTopOffset: json["coverImageTopOffset"],
        titles: Titles.fromJson(json["titles"]),
        canonicalTitle: json["canonicalTitle"],
        abbreviatedTitles:
            List<String>.from(json["abbreviatedTitles"].map((x) => x)),
        averageRating:
            json["averageRating"] == null ? null : json["averageRating"],
        ratingFrequencies: Map.from(json["ratingFrequencies"])
            .map((k, v) => MapEntry<String, String>(k, v)),
        userCount: json["userCount"],
        favoritesCount: json["favoritesCount"],
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        nextRelease: json["nextRelease"],
        popularityRank: json["popularityRank"],
        ratingRank: json["ratingRank"] == null ? null : json["ratingRank"],
        ageRating: json["ageRating"] == null ? null : json["ageRating"],
        ageRatingGuide:
            json["ageRatingGuide"] == null ? null : json["ageRatingGuide"],
        subtype: typeValues.map[json["subtype"]],
        status: statusValues.map[json["status"]],
        tba: json["tba"] == null ? null : json["tba"],
        posterImage: PosterImage.fromJson(json["posterImage"]),
        coverImage: json["coverImage"] == null
            ? null
            : CoverImage.fromJson(json["coverImage"]),
        chapterCount:
            json["chapterCount"] == null ? null : json["chapterCount"],
        volumeCount: json["volumeCount"],
        serialization:
            json["serialization"] == null ? null : json["serialization"],
        mangaType: typeValues.map[json["mangaType"]],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "slug": slug,
        "synopsis": synopsis,
        "description": description,
        "coverImageTopOffset": coverImageTopOffset,
        "titles": titles.toJson(),
        "canonicalTitle": canonicalTitle,
        "abbreviatedTitles":
            List<dynamic>.from(abbreviatedTitles.map((x) => x)),
        "averageRating": averageRating == null ? null : averageRating,
        "ratingFrequencies": Map.from(ratingFrequencies)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "userCount": userCount,
        "favoritesCount": favoritesCount,
        "startDate": startDate == null
            ? null
            : "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "endDate": endDate == null
            ? null
            : "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "nextRelease": nextRelease,
        "popularityRank": popularityRank,
        "ratingRank": ratingRank == null ? null : ratingRank,
        "ageRating": ageRating == null ? null : ageRating,
        "ageRatingGuide": ageRatingGuide == null ? null : ageRatingGuide,
        "subtype": typeValues.reverse[subtype],
        "status": statusValues.reverse[status],
        "tba": tba == null ? null : tba,
        "posterImage": posterImage.toJson(),
        "coverImage": coverImage == null ? null : coverImage.toJson(),
        "chapterCount": chapterCount == null ? null : chapterCount,
        "volumeCount": volumeCount,
        "serialization": serialization == null ? null : serialization,
        "mangaType": typeValues.reverse[mangaType],
      };
}

class CoverImage {
  CoverImage({
    this.tiny,
    this.small,
    this.large,
    this.original,
    this.meta,
  });

  String tiny;
  String small;
  String large;
  String original;
  CoverImageMeta meta;

  factory CoverImage.fromJson(Map<String, dynamic> json) => CoverImage(
        tiny: json["tiny"],
        small: json["small"],
        large: json["large"],
        original: json["original"],
        meta: CoverImageMeta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "tiny": tiny,
        "small": small,
        "large": large,
        "original": original,
        "meta": meta.toJson(),
      };
}

class CoverImageMeta {
  CoverImageMeta({
    this.dimensions,
  });

  Dimensions dimensions;

  factory CoverImageMeta.fromJson(Map<String, dynamic> json) => CoverImageMeta(
        dimensions: Dimensions.fromJson(json["dimensions"]),
      );

  Map<String, dynamic> toJson() => {
        "dimensions": dimensions.toJson(),
      };
}

class Dimensions {
  Dimensions({
    this.tiny,
    this.small,
    this.large,
    this.medium,
  });

  Large tiny;
  Large small;
  Large large;
  Large medium;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        tiny: Large.fromJson(json["tiny"]),
        small: Large.fromJson(json["small"]),
        large: Large.fromJson(json["large"]),
        medium: json["medium"] == null ? null : Large.fromJson(json["medium"]),
      );

  Map<String, dynamic> toJson() => {
        "tiny": tiny.toJson(),
        "small": small.toJson(),
        "large": large.toJson(),
        "medium": medium == null ? null : medium.toJson(),
      };
}

class Large {
  Large({
    this.width,
    this.height,
  });

  dynamic width;
  dynamic height;

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
      };
}

enum Type { MANGA }

final typeValues = EnumValues({"manga": Type.MANGA});

class PosterImage {
  PosterImage({
    this.tiny,
    this.small,
    this.medium,
    this.large,
    this.original,
    this.meta,
  });

  String tiny;
  String small;
  String medium;
  String large;
  String original;
  CoverImageMeta meta;

  factory PosterImage.fromJson(Map<String, dynamic> json) => PosterImage(
        tiny: json["tiny"],
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
        original: json["original"],
        meta: CoverImageMeta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "tiny": tiny,
        "small": small,
        "medium": medium,
        "large": large,
        "original": original,
        "meta": meta.toJson(),
      };
}

enum Status { CURRENT, FINISHED, TBA }

final statusValues = EnumValues({
  "current": Status.CURRENT,
  "finished": Status.FINISHED,
  "tba": Status.TBA
});

class Titles {
  Titles({
    this.en,
    this.enJp,
    this.enUs,
    this.jaJp,
  });

  String en;
  String enJp;
  String enUs;
  String jaJp;

  factory Titles.fromJson(Map<String, dynamic> json) => Titles(
        en: json["en"] == null ? null : json["en"],
        enJp: json["en_jp"],
        enUs: json["en_us"] == null ? null : json["en_us"],
        jaJp: json["ja_jp"] == null ? null : json["ja_jp"],
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? null : en,
        "en_jp": enJp,
        "en_us": enUs == null ? null : enUs,
        "ja_jp": jaJp == null ? null : jaJp,
      };
}

class DatumLinks {
  DatumLinks({
    this.self,
  });

  String self;

  factory DatumLinks.fromJson(Map<String, dynamic> json) => DatumLinks(
        self: json["self"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
      };
}

class Relationship {
  Relationship({
    this.links,
  });

  RelationshipLinks links;

  factory Relationship.fromJson(Map<String, dynamic> json) => Relationship(
        links: RelationshipLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "links": links.toJson(),
      };
}

class RelationshipLinks {
  RelationshipLinks({
    this.self,
    this.related,
  });

  String self;
  String related;

  factory RelationshipLinks.fromJson(Map<String, dynamic> json) =>
      RelationshipLinks(
        self: json["self"],
        related: json["related"],
      );

  Map<String, dynamic> toJson() => {
        "self": self,
        "related": related,
      };
}

class MangaModelLinks {
  MangaModelLinks({
    this.first,
    this.next,
    this.last,
  });

  String first;
  String next;
  String last;

  factory MangaModelLinks.fromJson(Map<String, dynamic> json) =>
      MangaModelLinks(
        first: json["first"],
        next: json["next"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "next": next,
        "last": last,
      };
}

class MangaModelMeta {
  MangaModelMeta({
    this.count,
  });

  int count;

  factory MangaModelMeta.fromJson(Map<String, dynamic> json) => MangaModelMeta(
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
