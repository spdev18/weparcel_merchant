// lib/Models/dashboard_model.dart
class DashboardModel {
  DashboardModel({
    bool? success,
    String? message,
    DataDashboard? data,
  }) {
    _success = success;
    _message = message;
    _data = data;
  }

  DashboardModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data =
        json['data'] != null ? DataDashboard.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  DataDashboard? _data;

  bool? get success => _success;
  String? get message => _message;
  DataDashboard? get data => _data;

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

class DataDashboard {
  DataDashboard({
    num? tParcel,
    num? tDelivered,
    num? tReturn,
    num? tCashCollection,
    num? tSellingPrice,
    num? tLiquidFragile,
    num? tPackaging,
    num? tVatAmount,
    num? tDeliveryCharge,
    num? tCodAmount,
    num? tDeliveryAmount,
    num? tCurrentPayable,
    num? tSale,
    num? tDeliveryFee,
    num? tBalanceProc,
    num? tBalancePaid,
    num? tShop,
    num? tParcelBank,
    num? tRequest,
    num? tFraud,
    String? totalParcels,
    String? totalParcelsDelivery,
    String? parcelsPending,
    String? parcelsProcessing,
    String? currentBalance,
    User? user,
    Merchant? merchant,
  }) {
    _tParcel = tParcel;
    _tDelivered = tDelivered;
    _tReturn = tReturn;
    _tCashCollection = tCashCollection;
    _tSellingPrice = tSellingPrice;
    _tLiquidFragile = tLiquidFragile;
    _tPackaging = tPackaging;
    _tVatAmount = tVatAmount;
    _tDeliveryCharge = tDeliveryCharge;
    _tCodAmount = tCodAmount;
    _tDeliveryAmount = tDeliveryAmount;
    _tCurrentPayable = tCurrentPayable;
    _tSale = tSale;
    _tDeliveryFee = tDeliveryFee;
    _tBalanceProc = tBalanceProc;
    _tBalancePaid = tBalancePaid;
    _tShop = tShop;
    _tParcelBank = tParcelBank;
    _tRequest = tRequest;
    _tFraud = tFraud;
    _totalParcels = totalParcels;
    _totalParcelsDelivery = totalParcelsDelivery;
    _parcelsPending = parcelsPending;
    _parcelsProcessing = parcelsProcessing;
    _currentBalance = currentBalance;
    _user = user;
    _merchant = merchant;
  }

  DataDashboard.fromJson(dynamic json) {
    _tParcel = num.tryParse(json['t_parcel'].toString());
    _tDelivered = num.tryParse(json['t_delivered'].toString());
    _tReturn = num.tryParse(json['t_return'].toString());
    _tCashCollection = num.tryParse(json['t_cash_collection'].toString());
    _tSellingPrice = num.tryParse(json['t_selling_price'].toString());
    _tLiquidFragile = num.tryParse(json['t_liquid_fragile'].toString());
    _tPackaging = num.tryParse(json['t_packaging'].toString());
    _tVatAmount = num.tryParse(json['t_vat_amount'].toString());
    _tDeliveryCharge = num.tryParse(json['t_delivery_charge'].toString());
    _tCodAmount = num.tryParse(json['t_cod_amount'].toString());
    _tDeliveryAmount = num.tryParse(json['t_delivery_amount'].toString());
    _tCurrentPayable = num.tryParse(json['t_current_payable'].toString());
    _tSale = num.tryParse(json['t_sale'].toString());
    _tDeliveryFee = num.tryParse(json['t_delivery_fee'].toString());
    _tBalanceProc = num.tryParse(json['t_balance_proc'].toString());
    _tBalancePaid = num.tryParse(json['t_balance_paid'].toString());
    _tShop = num.tryParse(json['t_shop'].toString());
    _tParcelBank = num.tryParse(json['t_parcel_bank'].toString());
    _tRequest = num.tryParse(json['t_request'].toString());
    _tFraud = num.tryParse(json['t_fraud'].toString());
    _totalParcels = json['total_parcels'].toString();
    _totalParcelsDelivery = json['total_parcels_delivery'].toString();
    _parcelsPending = json['parcels_pending'].toString();
    _parcelsProcessing = json['parcels_processing'].toString();
    _currentBalance = json['current_balance'].toString();
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
  }
  num? _tParcel;
  num? _tDelivered;
  num? _tReturn;
  num? _tCashCollection;
  num? _tSellingPrice;
  num? _tLiquidFragile;
  num? _tPackaging;
  num? _tVatAmount;
  num? _tDeliveryCharge;
  num? _tCodAmount;
  num? _tDeliveryAmount;
  num? _tCurrentPayable;
  num? _tSale;
  num? _tDeliveryFee;
  num? _tBalanceProc;
  num? _tBalancePaid;
  num? _tShop;
  num? _tParcelBank;
  num? _tRequest;
  num? _tFraud;
  String? _totalParcels;
  String? _totalParcelsDelivery;
  String? _parcelsPending;
  String? _parcelsProcessing;
  String? _currentBalance;
  User? _user;
  Merchant? _merchant;

  num? get tParcel => _tParcel;
  num? get tDelivered => _tDelivered;
  num? get tReturn => _tReturn;
  num? get tCashCollection => _tCashCollection;
  num? get tSellingPrice => _tSellingPrice;
  num? get tLiquidFragile => _tLiquidFragile;
  num? get tPackaging => _tPackaging;
  num? get tVatAmount => _tVatAmount;
  num? get tDeliveryCharge => _tDeliveryCharge;
  num? get tCodAmount => _tCodAmount;
  num? get tDeliveryAmount => _tDeliveryAmount;
  num? get tCurrentPayable => _tCurrentPayable;
  num? get tSale => _tSale;
  num? get tDeliveryFee => _tDeliveryFee;
  num? get tBalanceProc => _tBalanceProc;
  num? get tBalancePaid => _tBalancePaid;
  num? get tShop => _tShop;
  num? get tParcelBank => _tParcelBank;
  num? get tRequest => _tRequest;
  num? get tFraud => _tFraud;
  String? get totalParcels => _totalParcels;
  String? get totalParcelsDelivery => _totalParcelsDelivery;
  String? get parcelsPending => _parcelsPending;
  String? get parcelsProcessing => _parcelsProcessing;
  String? get currentBalance => _currentBalance;
  User? get user => _user;
  Merchant? get merchant => _merchant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['t_parcel'] = _tParcel;
    map['t_delivered'] = _tDelivered;
    map['t_return'] = _tReturn;
    map['t_cash_collection'] = _tCashCollection;
    map['t_selling_price'] = _tSellingPrice;
    map['t_liquid_fragile'] = _tLiquidFragile;
    map['t_packaging'] = _tPackaging;
    map['t_vat_amount'] = _tVatAmount;
    map['t_delivery_charge'] = _tDeliveryCharge;
    map['t_cod_amount'] = _tCodAmount;
    map['t_delivery_amount'] = _tDeliveryAmount;
    map['t_current_payable'] = _tCurrentPayable;
    map['t_sale'] = _tSale;
    map['t_delivery_fee'] = _tDeliveryFee;
    map['t_balance_proc'] = _tBalanceProc;
    map['t_balance_paid'] = _tBalancePaid;
    map['t_shop'] = _tShop;
    map['t_parcel_bank'] = _tParcelBank;
    map['t_request'] = _tRequest;
    map['t_fraud'] = _tFraud;
    map['total_parcels'] = _totalParcels;
    map['total_parcels_delivery'] = _totalParcelsDelivery;
    map['parcels_pending'] = _parcelsPending;
    map['parcels_processing'] = _parcelsProcessing;
    map['current_balance'] = _currentBalance;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    return map;
  }
}

class User {
  User({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? userType,
    Merchant? merchant,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _phone = phone;
    _userType = userType;
    _merchant = merchant;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _userType = json['user_type'];
    _merchant =
        json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
  }
  int? _id;
  String? _name;
  String? _email;
  String? _phone;
  String? _userType;
  Merchant? _merchant;

  int? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  String? get userType => _userType;
  Merchant? get merchant => _merchant;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['user_type'] = _userType;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    return map;
  }
}

class Merchant {
  Merchant({
    int? id,
    String? userId,
    String? businessName,
    String? merchantUniqueId,
    String? currentBalance,
    String? openingBalance,
    String? vat,
    CodCharges? codCharges,
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

  Merchant.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'].toString();
    _businessName = json['business_name'];
    _merchantUniqueId = json['merchant_unique_id'];
    _currentBalance = json['current_balance'];
    _openingBalance = json['opening_balance'];
    _vat = json['vat'].toString();
    if (json['cod_charges'] != null &&
        json['cod_charges'] is Map<String, dynamic>) {
      _codCharges = CodCharges.fromJson(json['cod_charges']);
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
  CodCharges? _codCharges;
  String? _address;

  int? get id => _id;
  String? get userId => _userId;
  String? get businessName => _businessName;
  String? get merchantUniqueId => _merchantUniqueId;
  String? get currentBalance => _currentBalance;
  String? get openingBalance => _openingBalance;
  String? get vat => _vat;
  CodCharges? get codCharges => _codCharges;
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

class CodCharges {
  CodCharges({
    String? insideCity,
    String? subCity,
    String? outsideCity,
  }) {
    _insideCity = insideCity;
    _subCity = subCity;
    _outsideCity = outsideCity;
  }

  CodCharges.fromJson(dynamic json) {
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