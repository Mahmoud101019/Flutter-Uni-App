// ignore_for_file: file_names, non_constant_identifier_names

class GetmyData {
  String? name;
  String? Uid;
  String? Email;

  GetmyData({
    this.Email,
    this.Uid,
    this.name,
  });

  GetmyData.fromJson(Map<String, dynamic> json) {
    Email = json['email'];
    name = json['name'];
    Uid = json['uId'];
  }

  Map<String, dynamic> ToMap() {
    return {'name': name, 'email': Email, 'uId': Uid};
  }
}