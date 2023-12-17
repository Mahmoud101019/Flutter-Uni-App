// ignore_for_file: non_constant_identifier_names

class Usermodel 
{
  String? name;
  String? email;
  String? uId;

  Usermodel({
    this.email,
    this.name,
    this.uId
  });

  Usermodel.fromJson(Map<String,dynamic>json)
  {
    email =json['email'];
    name =json['name'];
    uId =json['uId'];
  }

  Map<String,dynamic> ToMap()
  {
    return {
      'name' : name,
      'email':email,
      'uId' : uId
    };
  }
}