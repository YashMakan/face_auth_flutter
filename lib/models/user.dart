class User {
  static const String nameKey = "user_name";
  static const String arrayKey = "user_array";

  String? name;
  List? array;

  User({this.name, this.array});

  factory User.fromJson(Map<dynamic, dynamic> json) => User(
        name: json[nameKey],
        array: json[arrayKey],
      );

  Map<String, dynamic> toJson() => {
        nameKey: name,
        arrayKey: array,
      };
}
