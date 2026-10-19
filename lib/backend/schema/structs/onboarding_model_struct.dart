// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingModelStruct extends FFFirebaseStruct {
  OnboardingModelStruct({
    String? title,
    String? subtitle,
    List<String>? foodRestrictionsList,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _subtitle = subtitle,
        _foodRestrictionsList = foodRestrictionsList,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "foodRestrictionsList" field.
  List<String>? _foodRestrictionsList;
  List<String> get foodRestrictionsList => _foodRestrictionsList ?? const [];
  set foodRestrictionsList(List<String>? val) => _foodRestrictionsList = val;

  void updateFoodRestrictionsList(Function(List<String>) updateFn) {
    updateFn(_foodRestrictionsList ??= []);
  }

  bool hasFoodRestrictionsList() => _foodRestrictionsList != null;

  static OnboardingModelStruct fromMap(Map<String, dynamic> data) =>
      OnboardingModelStruct(
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        foodRestrictionsList: getDataList(data['foodRestrictionsList']),
      );

  static OnboardingModelStruct? maybeFromMap(dynamic data) => data is Map
      ? OnboardingModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'subtitle': _subtitle,
        'foodRestrictionsList': _foodRestrictionsList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'foodRestrictionsList': serializeParam(
          _foodRestrictionsList,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static OnboardingModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      OnboardingModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        foodRestrictionsList: deserializeParam<String>(
          data['foodRestrictionsList'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'OnboardingModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OnboardingModelStruct &&
        title == other.title &&
        subtitle == other.subtitle &&
        listEquality.equals(foodRestrictionsList, other.foodRestrictionsList);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, subtitle, foodRestrictionsList]);
}

OnboardingModelStruct createOnboardingModelStruct({
  String? title,
  String? subtitle,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OnboardingModelStruct(
      title: title,
      subtitle: subtitle,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OnboardingModelStruct? updateOnboardingModelStruct(
  OnboardingModelStruct? onboardingModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    onboardingModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOnboardingModelStructData(
  Map<String, dynamic> firestoreData,
  OnboardingModelStruct? onboardingModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (onboardingModel == null) {
    return;
  }
  if (onboardingModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && onboardingModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final onboardingModelData =
      getOnboardingModelFirestoreData(onboardingModel, forFieldValue);
  final nestedData =
      onboardingModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = onboardingModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOnboardingModelFirestoreData(
  OnboardingModelStruct? onboardingModel, [
  bool forFieldValue = false,
]) {
  if (onboardingModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(onboardingModel.toMap());

  // Add any Firestore field values
  onboardingModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOnboardingModelListFirestoreData(
  List<OnboardingModelStruct>? onboardingModels,
) =>
    onboardingModels
        ?.map((e) => getOnboardingModelFirestoreData(e, true))
        .toList() ??
    [];
