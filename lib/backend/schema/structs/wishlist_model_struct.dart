// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WishlistModelStruct extends FFFirebaseStruct {
  WishlistModelStruct({
    String? image,
    String? title,
    String? time,
    bool? isfav,
    int? id,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _title = title,
        _time = time,
        _isfav = isfav,
        _id = id,
        _type = type,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "isfav" field.
  bool? _isfav;
  bool get isfav => _isfav ?? false;
  set isfav(bool? val) => _isfav = val;

  bool hasIsfav() => _isfav != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static WishlistModelStruct fromMap(Map<String, dynamic> data) =>
      WishlistModelStruct(
        image: data['image'] as String?,
        title: data['title'] as String?,
        time: data['time'] as String?,
        isfav: data['isfav'] as bool?,
        id: castToType<int>(data['id']),
        type: data['type'] as String?,
      );

  static WishlistModelStruct? maybeFromMap(dynamic data) => data is Map
      ? WishlistModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'title': _title,
        'time': _time,
        'isfav': _isfav,
        'id': _id,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'isfav': serializeParam(
          _isfav,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static WishlistModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      WishlistModelStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        isfav: deserializeParam(
          data['isfav'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WishlistModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WishlistModelStruct &&
        image == other.image &&
        title == other.title &&
        time == other.time &&
        isfav == other.isfav &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, title, time, isfav, id, type]);
}

WishlistModelStruct createWishlistModelStruct({
  String? image,
  String? title,
  String? time,
  bool? isfav,
  int? id,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WishlistModelStruct(
      image: image,
      title: title,
      time: time,
      isfav: isfav,
      id: id,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WishlistModelStruct? updateWishlistModelStruct(
  WishlistModelStruct? wishlistModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wishlistModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWishlistModelStructData(
  Map<String, dynamic> firestoreData,
  WishlistModelStruct? wishlistModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wishlistModel == null) {
    return;
  }
  if (wishlistModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wishlistModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wishlistModelData =
      getWishlistModelFirestoreData(wishlistModel, forFieldValue);
  final nestedData =
      wishlistModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wishlistModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWishlistModelFirestoreData(
  WishlistModelStruct? wishlistModel, [
  bool forFieldValue = false,
]) {
  if (wishlistModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wishlistModel.toMap());

  // Add any Firestore field values
  wishlistModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWishlistModelListFirestoreData(
  List<WishlistModelStruct>? wishlistModels,
) =>
    wishlistModels
        ?.map((e) => getWishlistModelFirestoreData(e, true))
        .toList() ??
    [];
