class DonationModel {
  late String creatorId;
  late String creatorName;
  late String creatorProf;
  late String currency;
  late String amount;
  late String message;
  late String profileURL;

  DonationModel(
      {required this.creatorId,
      required this.creatorName,
      required this.creatorProf,
      required this.currency,
      required this.amount,
      required this.message,
      required this.profileURL});

  DonationModel.fromJson(Map<String, dynamic> json) {
    creatorId = json['creatorId'];
    currency = json['currency'];
    creatorProf = json['creatorProf'];
    amount = json['amount'];
    message = json['message'];
    profileURL = json['profileURL'];
    creatorName = json['creatorName'];
  }

  Map<String, dynamic> toMap() {
    return {
      'creatorId': creatorId,
      'creatorName': creatorName,
      'creatorProf': creatorProf,
      'currency': currency,
      'amount': amount,
      'message': message,
      'profileURL': profileURL,
    };
  }
}
