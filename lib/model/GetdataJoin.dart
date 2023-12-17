// ignore_for_file: file_names, non_constant_identifier_names

class GetmyDataa {
  String? Uid;
  String? name;
  String? address;
  String? nationalID;
  String? phonenumber;
  String? selectedType;
  String? totaldegrees;
  String? Years;
  String? PDF;

  GetmyDataa(
      {this.Uid,
      this.name,
      this.address,
      this.nationalID,
      this.phonenumber,
      this.selectedType,
      this.totaldegrees,
      this.Years,
      this.PDF});

  GetmyDataa.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    Uid = json['uId'];
    address = json['address'];
    nationalID = json['nationalID'];
    phonenumber = json['phone number'];
    selectedType = json['selected Type'];
    totaldegrees = json['total degrees'];
    Years = json['Years'];
    PDF = json['PDF'];
  }

  Map<String, dynamic> ToMap() {
    return {
      'name': name,
      'uId': Uid,
      'address': address,
      'nationalID': nationalID,
      'phone number': phonenumber,
      'selected Type': selectedType,
      'total degrees': totaldegrees,
      'Years': Years,
      'PDF': PDF
    };
  }
}