// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, avoid_js_rounded_ints, prefer_final_locals

extension GetDetailDTOCollection on Isar {
  IsarCollection<DetailDTO> get detailDTOs => this.collection();
}

const DetailDTOSchema = CollectionSchema(
  name: r'DetailDTO',
  id: -2968836428816848386,
  properties: {
    r'html': PropertySchema(
      id: 0,
      name: r'html',
      type: IsarType.string,
    )
  },
  estimateSize: _detailDTOEstimateSize,
  serializeNative: _detailDTOSerializeNative,
  deserializeNative: _detailDTODeserializeNative,
  deserializePropNative: _detailDTODeserializePropNative,
  serializeWeb: _detailDTOSerializeWeb,
  deserializeWeb: _detailDTODeserializeWeb,
  deserializePropWeb: _detailDTODeserializePropWeb,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _detailDTOGetId,
  getLinks: _detailDTOGetLinks,
  attach: _detailDTOAttach,
  version: '3.0.0-dev.14',
);

int _detailDTOEstimateSize(
  DetailDTO object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.html.length * 3;
  return bytesCount;
}

int _detailDTOSerializeNative(
  DetailDTO object,
  IsarBinaryWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.html);
  return writer.usedBytes;
}

DetailDTO _detailDTODeserializeNative(
  Id id,
  IsarBinaryReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DetailDTO(
    html: reader.readString(offsets[0]),
  );
  return object;
}

P _detailDTODeserializePropNative<P>(
  IsarBinaryReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Object _detailDTOSerializeWeb(
    IsarCollection<DetailDTO> collection, DetailDTO object) {
  /*final jsObj = IsarNative.newJsObject();*/ throw UnimplementedError();
}

DetailDTO _detailDTODeserializeWeb(
    IsarCollection<DetailDTO> collection, Object jsObj) {
  /*final object = DetailDTO(html: IsarNative.jsObjectGet(jsObj, r'html') ?? '',);*/
  //return object;
  throw UnimplementedError();
}

P _detailDTODeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    default:
      throw IsarError('Illegal propertyName');
  }
}

Id _detailDTOGetId(DetailDTO object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _detailDTOGetLinks(DetailDTO object) {
  return [];
}

void _detailDTOAttach(IsarCollection<dynamic> col, Id id, DetailDTO object) {}

extension DetailDTOQueryWhereSort
    on QueryBuilder<DetailDTO, DetailDTO, QWhere> {
  QueryBuilder<DetailDTO, DetailDTO, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DetailDTOQueryWhere
    on QueryBuilder<DetailDTO, DetailDTO, QWhereClause> {
  QueryBuilder<DetailDTO, DetailDTO, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterWhereClause> idNotEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DetailDTOQueryFilter
    on QueryBuilder<DetailDTO, DetailDTO, QFilterCondition> {
  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'html',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'html',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'html',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'html',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'html',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'html',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'html',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'html',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'html',
        value: '',
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> htmlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'html',
        value: '',
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DetailDTOQueryObject
    on QueryBuilder<DetailDTO, DetailDTO, QFilterCondition> {}

extension DetailDTOQueryLinks
    on QueryBuilder<DetailDTO, DetailDTO, QFilterCondition> {}

extension DetailDTOQuerySortBy on QueryBuilder<DetailDTO, DetailDTO, QSortBy> {
  QueryBuilder<DetailDTO, DetailDTO, QAfterSortBy> sortByHtml() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'html', Sort.asc);
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterSortBy> sortByHtmlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'html', Sort.desc);
    });
  }
}

extension DetailDTOQuerySortThenBy
    on QueryBuilder<DetailDTO, DetailDTO, QSortThenBy> {
  QueryBuilder<DetailDTO, DetailDTO, QAfterSortBy> thenByHtml() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'html', Sort.asc);
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterSortBy> thenByHtmlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'html', Sort.desc);
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DetailDTO, DetailDTO, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DetailDTOQueryWhereDistinct
    on QueryBuilder<DetailDTO, DetailDTO, QDistinct> {
  QueryBuilder<DetailDTO, DetailDTO, QDistinct> distinctByHtml(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'html', caseSensitive: caseSensitive);
    });
  }
}

extension DetailDTOQueryProperty
    on QueryBuilder<DetailDTO, DetailDTO, QQueryProperty> {
  QueryBuilder<DetailDTO, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DetailDTO, String, QQueryOperations> htmlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'html');
    });
  }
}
