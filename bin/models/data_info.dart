import 'dart:convert';

Info infoFromData(String data) => Info.fromJson(jsonDecode(data));

String infoToData(Info info) => jsonEncode(info.toJson());

class Info{
  late String name;
  late List<String> friends;
  late Profession profession;

  Info.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    friends = List<String>.from(json["friends"].map((element) => element.toString()));
    profession = Profession.fromJson(json["profession"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "friends": friends,
      "profession": profession,
    };
    return map;
  }

  @override
  String toString() {
    return "\nName: $name \nFriends: $friends \nProfession: \n {\n$profession\n }";
  }

}

class Profession {

  late String type;
  late double salary;
  late List<String> companyBranches;

  Profession.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    salary = json["salary"].toDouble();
    companyBranches = List<String>.from(json["companyBranches"].map((element) => element.toString()));
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "type": type,
      "salary": salary,
      "companyBranches": companyBranches,
    };
    return map;
  }

  @override
  String toString() {
    return "  Type: $type\n  Salary: $salary\n  Company Branches: $companyBranches";
  }
}