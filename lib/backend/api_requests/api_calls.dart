import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start AuthService Group Code

class AuthServiceGroup {
  static String getBaseUrl() => 'https://ce79-92-241-36-250.ngrok-free.app';
  static Map<String, String> headers = {};
  static SendUserPINCall sendUserPINCall = SendUserPINCall();
  static SendPINToParentForChildLinkingCall sendPINToParentForChildLinkingCall =
      SendPINToParentForChildLinkingCall();
  static SendPINToDoctorForChildLinkingCall sendPINToDoctorForChildLinkingCall =
      SendPINToDoctorForChildLinkingCall();
  static ConfirmChildLinkingWithDoctorCall confirmChildLinkingWithDoctorCall =
      ConfirmChildLinkingWithDoctorCall();
  static RegisterChildCall registerChildCall = RegisterChildCall();
  static FetchParentsChildrenEmailsCall fetchParentsChildrenEmailsCall =
      FetchParentsChildrenEmailsCall();
  static RegisterParentCall registerParentCall = RegisterParentCall();
  static VerifyUserInformationCall verifyUserInformationCall =
      VerifyUserInformationCall();
  static ValidateUserTokenCall validateUserTokenCall = ValidateUserTokenCall();
  static GetParentEmailCall getParentEmailCall = GetParentEmailCall();
  static GetDoctorEmailCall getDoctorEmailCall = GetDoctorEmailCall();
  static FetchChildsAgeCall fetchChildsAgeCall = FetchChildsAgeCall();
}

class SendUserPINCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Send User PIN',
      apiUrl: '${baseUrl}/auth/verify/user/email/send-pin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SendPINToParentForChildLinkingCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? parentEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Send PIN to Parent for Child Linking',
      apiUrl: '${baseUrl}/auth/link/child/parent/send-pin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SendPINToDoctorForChildLinkingCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? doctorEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Send PIN to Doctor for Child Linking',
      apiUrl: '${baseUrl}/auth/link/child/doctor/send-pin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmChildLinkingWithDoctorCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? doctorEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Confirm Child Linking with Doctor',
      apiUrl: '${baseUrl}/auth/link/child/doctor/confirmed',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterChildCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? firstName = '',
    String? lastName = '',
    String? parentEmail = '',
    String? dateOfBirth = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Register Child',
      apiUrl: '${baseUrl}/auth/register/child',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchParentsChildrenEmailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Parents Children Emails',
      apiUrl: '${baseUrl}/auth/get/parent/children',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authToken}',
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterParentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register Parent',
      apiUrl: '${baseUrl}/auth/register/parent',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyUserInformationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Verify User Information',
      apiUrl: '${baseUrl}/auth/login/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateUserTokenCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Validate User Token',
      apiUrl: '${baseUrl}/auth/validate/user/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetParentEmailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Parent Email',
      apiUrl: '${baseUrl}/auth/get/child/parent',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDoctorEmailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Doctor Email',
      apiUrl: '${baseUrl}/auth/get/child/doctor',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchChildsAgeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Childs Age',
      apiUrl: '${baseUrl}/auth/get/child/age',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End AuthService Group Code

class ParentLoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "userType": "PARENT"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ParentLogin',
      apiUrl: 'https://ce79-92-241-36-250.ngrok-free.app/auth/login/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsernameCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetUsername',
      apiUrl: 'https://ce79-92-241-36-250.ngrok-free.app/auth/get/username',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${authToken}',
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
