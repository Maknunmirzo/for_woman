import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/interview_model.dart';

class InterviewRepository {
  final ApiClient client;

  List<InterviewModel> interviews = [];

  InterviewRepository({required this.client});

  Future<List<InterviewModel>> fetchInterviews({
    Map<String, dynamic>? queryParameters,
  }) async {
    if (interviews.isNotEmpty) {
      return interviews;
    }

    final rawList = await client.fetchInterviews(
      queryParameters: queryParameters,
    );

    interviews = rawList
        .map((json) => InterviewModel.fromJson(json as Map<String, dynamic>))
        .toList();
    return interviews;
  }
}
