import 'creator_model.dart';

class FavoritesModel {

  late List<CreatorModel> favoes;

  FavoritesModel.fromJson(Map<String, dynamic> json) {
    for (var element in json['favoes']) {
      favoes.add(CreatorModel.fromJson(element));
    }
  }
}
