import 'package:dio/dio.dart';

import './Models/course.dart';

const String localhost = "http://localhost:1100/";

class CourseApi {
  final _dio = Dio(BaseOptions(baseUrl: localhost));

  Future<List> getAllCourses() async {
    final response = await _dio.get('/getAllCourses');

    return response.data['programs'];
  }

  Future editCourseByCourseName(String id, String courseName) async {
    final response = await _dio.post('/editCourseByCourseName',
        data: {'id': id, 'courseName': courseName});
  }

  Future deleteCourseById(String id) async {
    final response = await _dio.post('/deleteCourseById', data: {'id': id});
  }
}
