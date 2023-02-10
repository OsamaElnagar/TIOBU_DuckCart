class CreatorModel {
  late int id;
  late String name;
  late String profileURL;
  late String profession;

  CreatorModel(
      {required this.id,
      required this.name,
      required this.profileURL,
      required this.profession});

  CreatorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    profileURL = json['profileURL'];
    profession = json['profession'];
  }
}
