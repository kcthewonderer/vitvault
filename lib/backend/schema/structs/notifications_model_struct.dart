// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsModelStruct extends FFFirebaseStruct {
  NotificationsModelStruct({
    String? title,
    String? subtitle,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _subtitle = subtitle,
        _time = time,
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

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static NotificationsModelStruct fromMap(Map<String, dynamic> data) =>
      NotificationsModelStruct(
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        time: data['time'] as String?,
      );

  static NotificationsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'subtitle': _subtitle,
        'time': _time,
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
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationsModelStruct(
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
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationsModelStruct &&
        title == other.title &&
        subtitle == other.subtitle &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([title, subtitle, time]);
}

NotificationsModelStruct createNotificationsModelStruct({
  String? title,
  String? subtitle,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationsModelStruct(
      title: title,
      subtitle: subtitle,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationsModelStruct? updateNotificationsModelStruct(
  NotificationsModelStruct? notificationsModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notificationsModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationsModelStructData(
  Map<String, dynamic> firestoreData,
  NotificationsModelStruct? notificationsModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notificationsModel == null) {
    return;
  }
  if (notificationsModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notificationsModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationsModelData =
      getNotificationsModelFirestoreData(notificationsModel, forFieldValue);
  final nestedData =
      notificationsModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      notificationsModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationsModelFirestoreData(
  NotificationsModelStruct? notificationsModel, [
  bool forFieldValue = false,
]) {
  if (notificationsModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notificationsModel.toMap());

  // Add any Firestore field values
  notificationsModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationsModelListFirestoreData(
  List<NotificationsModelStruct>? notificationsModels,
) =>
    notificationsModels
        ?.map((e) => getNotificationsModelFirestoreData(e, true))
        .toList() ??
    [];
