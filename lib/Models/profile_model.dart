// lib/Models/profile_model.dart
class ProfileModel {
  ProfileModel({
    bool? success,
    String? message,
    Data? data,
  }) {
    _success = success;
    _message = message;
    _data = data;
  }

  ProfileModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;

  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    ProfileUserData? user,
  }) {
    _user = user;
  }

  Data.fromJson(dynamic json) {
    _user =
        json['user'] != null ? ProfileUserData.fromJson(json['user']) : null;
  }
  ProfileUserData? _user;

  ProfileUserData? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

class ProfileUserData {
  ProfileUserData({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? userType,
    String? hubId,
    dynamic joiningDate,
    String? address,
    String? status,
    String? image,
    MerchantProfile? merchant,
    ProfileHub? hub,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _phone = phone;
    _userType = userType;
    _hubId = hubId;
    _joiningDate = joiningDate;
    _address = address;
    _status = status;
    _image = image;
    _merchant = merchant;
    _hub = hub;
  }

  ProfileUserData.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _userType = json['user_type'];
    _hubId = json['hub_id'].toString();
    _joiningDate = json['joining_date'];
    _address = json['address'];
    _status = json['status'].toString();
    _image = json['image'];
    _merchant = json['merchant'] != null
        ? MerchantProfile.fromJson(json['merchant'])
        : null;
    _hub = json['hub'] != null ? ProfileHub.fromJson(json['hub']) : null;
  }
  int? _id;
  String? _name;
  String? _email;
  String? _phone;
  String? _userType;
  String? _hubId;
  dynamic _joiningDate;
  String? _address;
  String? _status;
  String? _image;
  MerchantProfile? _merchant;
  ProfileHub? _hub;

  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  String? get userType => _userType;
  String? get hubId => _hubId;
  dynamic get joiningDate => _joiningDate;
  String? get address => _address;
  String? get status => _status;
  String? get image => _image;
  MerchantProfile? get merchant => _merchant;
  ProfileHub? get hub => _hub;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['user_type'] = _userType;
    map['hub_id'] = _hubId;
    map['joining_date'] = _joiningDate;
    map['address'] = _address;
    map['status'] = _status;
    map['image'] = _image;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    if (_hub != null) {
      map['hub'] = _hub?.toJson();
    }
    return map;
  }
}

class MerchantProfile {
  MerchantProfile({
    int? id,
    String? userId,
    String? businessName,
    String? merchantUniqueId,
    String? currentBalance,
    String? openingBalance,
    String? vat,
    ProfileCodCharges? codCharges,
    String? address,
  }) {
    _id = id;
    _userId = userId;
    _businessName = businessName;
    _merchantUniqueId = merchantUniqueId;
    _currentBalance = currentBalance;
    _openingBalance = openingBalance;
    _vat = vat;
    _codCharges = codCharges;
    _address = address;
  }

  MerchantProfile.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'].toString();
    _businessName = json['business_name'];
    _merchantUniqueId = json['merchant_unique_id'];
    _currentBalance = json['current_balance'];
    _openingBalance = json['opening_balance'];
    _vat = json['vat'].toString();
    if (json['cod_charges'] != null &&
        json['cod_charges'] is Map<String, dynamic>) {
      _codCharges = ProfileCodCharges.fromJson(json['cod_charges']);
    } else {
      _codCharges = null;
    }
    _address = json['address'];
  }
  int? _id;
  String? _userId;
  String? _businessName;
  String? _merchantUniqueId;
  String? _currentBalance;
  String? _openingBalance;
  String? _vat;
  ProfileCodCharges? _codCharges;
  String? _address;

  int? get id => _id;
  String? get userId => _userId;
  String? get businessName => _businessName;
  String? get merchantUniqueId => _merchantUniqueId;
  String? get currentBalance => _currentBalance;
  String? get openingBalance => _openingBalance;
  String? get vat => _vat;
  ProfileCodCharges? get codCharges => _codCharges;
  String? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['business_name'] = _businessName;
    map['merchant_unique_id'] = _merchantUniqueId;
    map['current_balance'] = _currentBalance;
    map['opening_balance'] = _openingBalance;
    map['vat'] = _vat;
    if (_codCharges != null) {
      map['cod_charges'] = _codCharges?.toJson();
    }
    map['address'] = _address;
    return map;
  }
}

class ProfileCodCharges {
  ProfileCodCharges({
    String? insideCity,
    String? subCity,
    String? outsideCity,
  }) {
    _insideCity = insideCity;
    _subCity = subCity;
    _outsideCity = outsideCity;
  }

  ProfileCodCharges.fromJson(dynamic json) {
    _insideCity = json['inside_city'].toString();
    _subCity = json['sub_city'].toString();
    _outsideCity = json['outside_city'].toString();
  }
  String? _insideCity;
  String? _subCity;
  String? _outsideCity;

  String? get insideCity => _insideCity;
  String? get subCity => _subCity;
  String? get outsideCity => _outsideCity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['inside_city'] = _insideCity;
    map['sub_city'] = _subCity;
    map['outside_city'] = _outsideCity;
    return map;
  }
}

class ProfileHub {
  ProfileHub({
    int? id,
    String? name,
    String? phone,
    String? address,
  }) {
    _id = id;
    _name = name;
    _phone = phone;
    _address = address;
  }

  ProfileHub.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _phone = json['phone'];
    _address = json['address'];
  }
  int? _id;
  String? _name;
  String? _phone;
  String? _address;

  int? get id => _id;
  String? get name => _name;
  String? get phone => _phone;
  String? get address => _address;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['phone'] = _phone;
    map['address'] = _address;
    return map;
  }
}