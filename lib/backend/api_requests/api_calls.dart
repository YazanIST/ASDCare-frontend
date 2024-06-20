import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start AuthService Group Code

class AuthServiceGroup {
  static String getBaseUrl() => 'https://0920-93-213-23-12.ngrok-free.app';
  static Map<String, String> headers = {
    'ngrok-skip-browser-warning': 'True',
  };
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
  static GetUsernameCall getUsernameCall = GetUsernameCall();
  static FetchUserTypeCall fetchUserTypeCall = FetchUserTypeCall();
  static FetchUserEmailCall fetchUserEmailCall = FetchUserEmailCall();
}

class SendUserPINCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send User PIN',
      apiUrl: '$baseUrl/auth/verify/user/email/send-pin',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
      apiUrl: '$baseUrl/auth/link/child/parent/send-pin',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
      apiUrl: '$baseUrl/auth/link/child/doctor/send-pin',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
      apiUrl: '$baseUrl/auth/link/child/doctor/confirmed',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
    String? birthDate = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "firstName": "$firstName",
  "lastName": "$lastName",
  "parentEmail": "$parentEmail",
  "birthDate": "$birthDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register Child',
      apiUrl: '$baseUrl/auth/register/child',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
      apiUrl: '$baseUrl/auth/get/parent/children',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterParentCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? username = '',
    String? password = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "username": "$username"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register Parent',
      apiUrl: '$baseUrl/auth/register/parent',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyUserInformationCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? userType = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "userType": "$userType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify User Information',
      apiUrl: '$baseUrl/auth/login/user',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateUserTokenCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Validate User Token',
      apiUrl: '$baseUrl/auth/validate/user/token',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '$authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetParentEmailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Parent Email',
      apiUrl: '$baseUrl/auth/get/child/parent',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDoctorEmailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Doctor Email',
      apiUrl: '$baseUrl/auth/get/child/doctor',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchChildsAgeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Childs Age',
      apiUrl: '$baseUrl/auth/get/child/age',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsernameCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Username',
      apiUrl: '$baseUrl/auth/get/username',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchUserTypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch User Type',
      apiUrl: '$baseUrl/auth/get/user/type',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchUserEmailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch User Email',
      apiUrl: '$baseUrl/auth/get/user/email',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End AuthService Group Code

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
  if (item is DocumentReference) {
    return item.path;
  }
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
