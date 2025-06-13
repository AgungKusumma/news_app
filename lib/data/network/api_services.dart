import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/common/constants.dart';
import 'package:news_app/data/model/base_response.dart';
import 'package:news_app/data/model/detail_story_response.dart';
import 'package:news_app/data/model/login_response.dart';
import 'package:news_app/data/model/story_response.dart';
import 'package:news_app/utils/api_exceptions.dart';
import 'package:news_app/utils/api_headers.dart';

void _handleError(http.Response response) {
  switch (response.statusCode) {
    case 400:
      throw BadRequestException(response.body);
    case 401:
      throw UnauthorizedException(response.body);
    case 500:
      throw ServerException(response.body);
    default:
      throw Exception('Unexpected error: ${response.statusCode}');
  }
}

class ApiService {
  // Register
  Future<BaseResponse> register(
      String name, String email, String password) async {
    final url = Uri.parse(AppConstants.registerUrl);
    final response = await http.post(
      url,
      headers: ApiHeaders.defaultHeaders(),
      body: jsonEncode({"name": name, "email": email, "password": password}),
    );

    if (response.statusCode != 201) {
      _handleError(response);
    }

    final data = jsonDecode(response.body);
    return BaseResponse.fromJson(data);
  }

  // Login
  Future<LoginResponse> login(String email, String password) async {
    final url = Uri.parse(AppConstants.loginUrl);
    final response = await http.post(
      url,
      headers: ApiHeaders.defaultHeaders(),
      body: jsonEncode({"email": email, "password": password}),
    );

    if (response.statusCode != 200) {
      _handleError(response);
    }

    final data = jsonDecode(response.body);
    return LoginResponse.fromJson(data);
  }

  // Add New Story (with auth token)
  Future<BaseResponse> addNewStory(
      String token, String description, String photoPath, List<int> bytes,
      {double? lat, double? lon}) async {
    final url = Uri.parse(AppConstants.storiesUrl);
    var request = http.MultipartRequest('POST', url);

    request.headers.addAll(ApiHeaders.authOnlyHeaders(token));

    request.fields['description'] = description;
    if (lat != null) request.fields['lat'] = lat.toString();
    if (lon != null) request.fields['lon'] = lon.toString();

    request.files.add(http.MultipartFile.fromBytes('photo', bytes, filename: photoPath));

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode != 201) {
      _handleError(response);
    }

    final data = jsonDecode(response.body);
    return BaseResponse.fromJson(data);
  }

  // Get All Stories (with auth token)
  Future<AllStoriesResponse> getAllStories(String token,
      {int? page, int? size, int location = 0}) async {
    final queryParams = <String, String>{
      if (page != null) 'page': page.toString(),
      if (size != null) 'size': size.toString(),
      'location': location.toString(),
    };
    final url = Uri.parse(AppConstants.storiesUrl)
        .replace(queryParameters: queryParams);
    final response = await http.get(
      url,
      headers: ApiHeaders.authOnlyHeaders(token),
    );

    if (response.statusCode != 200) {
      _handleError(response);
    }

    final data = jsonDecode(response.body);
    return AllStoriesResponse.fromJson(data);
  }

  // Get Detail Story by id (with auth token)
  Future<DetailStoryResponse> getDetailStory(
      String token, String storyId) async {
    final url = Uri.parse('${AppConstants.storiesUrl}/$storyId');
    final response = await http.get(
      url,
      headers: ApiHeaders.authOnlyHeaders(token),
    );

    if (response.statusCode != 200) {
      _handleError(response);
    }

    final data = jsonDecode(response.body);
    return DetailStoryResponse.fromJson(data);
  }
}
