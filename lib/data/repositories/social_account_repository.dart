import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/social_account_model.dart';

class SocialAccountRepository {
  final ApiClient client;

  List<SocialAccountModel> accounts = [];

  SocialAccountRepository({required this.client});

  Future<List<SocialAccountModel>> fetchSocialAccounts() async {
    if (accounts.isNotEmpty) {
      return accounts;
    }

    final rawList = await client.fetchSocialAccounts();

    accounts = rawList
        .map(
          (json) => SocialAccountModel.fromJson(json as Map<String, dynamic>),
        )
        .toList();
    return accounts;
  }
}
