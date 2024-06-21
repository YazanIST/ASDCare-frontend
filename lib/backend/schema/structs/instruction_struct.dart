// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InstructionStruct extends FFFirebaseStruct {
  InstructionStruct({
    int? id,
    String? email,
    String? instruction,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _email = email,
        _instruction = instruction,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "instruction" field.
  String? _instruction;
  String get instruction => _instruction ?? '';
  set instruction(String? val) => _instruction = val;

  bool hasInstruction() => _instruction != null;

  static InstructionStruct fromMap(Map<String, dynamic> data) =>
      InstructionStruct(
        id: castToType<int>(data['id']),
        email: data['email'] as String?,
        instruction: data['instruction'] as String?,
      );

  static InstructionStruct? maybeFromMap(dynamic data) => data is Map
      ? InstructionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'instruction': _instruction,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'instruction': serializeParam(
          _instruction,
          ParamType.String,
        ),
      }.withoutNulls;

  static InstructionStruct fromSerializableMap(Map<String, dynamic> data) =>
      InstructionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        instruction: deserializeParam(
          data['instruction'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InstructionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InstructionStruct &&
        id == other.id &&
        email == other.email &&
        instruction == other.instruction;
  }

  @override
  int get hashCode => const ListEquality().hash([id, email, instruction]);
}

InstructionStruct createInstructionStruct({
  int? id,
  String? email,
  String? instruction,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InstructionStruct(
      id: id,
      email: email,
      instruction: instruction,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InstructionStruct? updateInstructionStruct(
  InstructionStruct? instructionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    instructionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInstructionStructData(
  Map<String, dynamic> firestoreData,
  InstructionStruct? instructionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (instructionStruct == null) {
    return;
  }
  if (instructionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && instructionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final instructionStructData =
      getInstructionFirestoreData(instructionStruct, forFieldValue);
  final nestedData =
      instructionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = instructionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInstructionFirestoreData(
  InstructionStruct? instructionStruct, [
  bool forFieldValue = false,
]) {
  if (instructionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(instructionStruct.toMap());

  // Add any Firestore field values
  instructionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInstructionListFirestoreData(
  List<InstructionStruct>? instructionStructs,
) =>
    instructionStructs
        ?.map((e) => getInstructionFirestoreData(e, true))
        .toList() ??
    [];
