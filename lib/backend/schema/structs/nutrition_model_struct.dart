// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NutritionModelStruct extends FFFirebaseStruct {
  NutritionModelStruct({
    String? title,
    String? qty,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _qty = qty,
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

  static NutritionModelStruct fromMap(Map<String, dynamic> data) =>
      NutritionModelStruct(
        title: data['title'] as String?,
        qty: data['qty'] as String?,
      );

  static NutritionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? NutritionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'qty': _qty,
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
      }.withoutNulls;

  static NutritionModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      NutritionModelStruct(
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
      );

  @override
  String toString() => 'NutritionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NutritionModelStruct &&
        title == other.title &&
        qty == other.qty;
  }

  @override
  int get hashCode => const ListEquality().hash([title, qty]);
}

NutritionModelStruct createNutritionModelStruct({
  String? title,
  String? qty,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NutritionModelStruct(
      title: title,
      qty: qty,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NutritionModelStruct? updateNutritionModelStruct(
  NutritionModelStruct? nutritionModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    nutritionModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNutritionModelStructData(
  Map<String, dynamic> firestoreData,
  NutritionModelStruct? nutritionModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (nutritionModel == null) {
    return;
  }
  if (nutritionModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && nutritionModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nutritionModelData =
      getNutritionModelFirestoreData(nutritionModel, forFieldValue);
  final nestedData =
      nutritionModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = nutritionModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNutritionModelFirestoreData(
  NutritionModelStruct? nutritionModel, [
  bool forFieldValue = false,
]) {
  if (nutritionModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(nutritionModel.toMap());

  // Add any Firestore field values
  nutritionModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNutritionModelListFirestoreData(
  List<NutritionModelStruct>? nutritionModels,
) =>
    nutritionModels
        ?.map((e) => getNutritionModelFirestoreData(e, true))
        .toList() ??
    [];
