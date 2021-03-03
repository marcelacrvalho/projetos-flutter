class ApiModel {
  String quote;

  ApiModel({this.quote});

  ApiModel.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quote'] = this.quote;
    return data;
  }
}