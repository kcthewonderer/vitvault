// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstructionsModelStruct extends FFFirebaseStruct {
  InstructionsModelStruct({
    String? title,
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _id = id,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static InstructionsModelStruct fromMap(Map<String, dynamic> data) =>
      InstructionsModelStruct(
        title: data['title'] as String?,
        id: castToType<int>(data['id']),
      );

  static InstructionsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? InstructionsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static InstructionsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InstructionsModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'InstructionsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InstructionsModelStruct &&
        title == other.title &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([title, id]);
}

InstructionsModelStruct createInstructionsModelStruct({
  String? title,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InstructionsModelStruct(
      title: title,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InstructionsModelStruct? updateInstructionsModelStruct(
  InstructionsModelStruct? instructionsModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    instructionsModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInstructionsModelStructData(
  Map<String, dynamic> firestoreData,
  InstructionsModelStruct? instructionsModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (instructionsModel == null) {
    return;
  }
  if (instructionsModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && instructionsModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final instructionsModelData =
      getInstructionsModelFirestoreData(instructionsModel, forFieldValue);
  final nestedData =
      instructionsModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = instructionsModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInstructionsModelFirestoreData(
  InstructionsModelStruct? instructionsModel, [
  bool forFieldValue = false,
]) {
  if (instructionsModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(instructionsModel.toMap());

  // Add any Firestore field values
  instructionsModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInstructionsModelListFirestoreData(
  List<InstructionsModelStruct>? instructionsModels,
) =>
    instructionsModels
        ?.map((e) => getInstructionsModelFirestoreData(e, true))
        .toList() ??
    [];
