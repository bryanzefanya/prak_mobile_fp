class HeroList {
  int? code;
  String? message;
  List<Data>? data;

  HeroList({
    this.code,
    this.message,
    this.data,
  });

  HeroList.fromJson(Map<String, dynamic> json) {
    code = json['code'] as int?;
    message = json['message'] as String?;
    data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['code'] = code;
    json['message'] = message;
    json['data'] = data?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Data {
  String? name;
  String? heroid;
  String? key;

  Data({
    this.name,
    this.heroid,
    this.key,
  });

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    heroid = json['heroid'] as String?;
    key = json['key'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['heroid'] = heroid;
    json['key'] = key;
    return json;
  }
}