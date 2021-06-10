class UserModel {
  final String name;
  final String deviceID;
  //Create another data here

  UserModel({required this.name, required this.deviceID});

  String getName() => this.name;
  String getDeviceID() => this.deviceID;

  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(name: data["name"], deviceID: data["deviceID"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'name': this.name,
      'deviceID': this.deviceID,
    };

    return json;
  }
}
