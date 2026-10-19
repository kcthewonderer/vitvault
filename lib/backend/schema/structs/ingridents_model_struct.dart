// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngridentsModelStruct extends FFFirebaseStruct {
  IngridentsModelStruct({
    String? title,
    String? qty,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _qty = qty,
        _image = image,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "qty" field.
  String? _qty;
  String get qty => _qty ?? '';
  set qty(String? val) => _qty = val;

  bool hasQty() => _qty != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static IngridentsModelStruct fromMap(Map<String, dynamic> data) =>
      IngridentsModelStruct(
        title: data['title'] as String?,
        qty: data['qty'] as String?,
        image: data['image'] as String?,
      );

  static IngridentsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? IngridentsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'qty': _qty,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static IngridentsModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngridentsModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IngridentsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngridentsModelStruct &&
        title == other.title &&
        qty == other.qty &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([title, qty, image]);
}

IngridentsModelStruct createIngridentsModelStruct({
  String? title,
  String? qty,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngridentsModelStruct(
      title: title,
      qty: qty,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IngridentsModelStruct? updateIngridentsModelStruct(
  IngridentsModelStruct? ingridentsModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingridentsModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngridentsModelStructData(
  Map<String, dynamic> firestoreData,
  IngridentsModelStruct? ingridentsModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingridentsModel == null) {
    return;
  }
  if (ingridentsModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingridentsModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingridentsModelData =
      getIngridentsModelFirestoreData(ingridentsModel, forFieldValue);
  final nestedData =
      ingridentsModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingridentsModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngridentsModelFirestoreData(
  IngridentsModelStruct? ingridentsModel, [
  bool forFieldValue = false,
]) {
  if (ingridentsModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingridentsModel.toMap());

  // Add any Firestore field values
  ingridentsModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngridentsModelListFirestoreData(
  List<IngridentsModelStruct>? ingridentsModels,
) =>
    ingridentsModels
        ?.map((e) => getIngridentsModelFirestoreData(e, true))
        .toList() ??
    [];
