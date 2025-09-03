class DateToDateStatementModel {
  bool? success;
  String? message;
  Data? data;

  DateToDateStatementModel({this.success, this.message, this.data});

  DateToDateStatementModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Merchant? merchant;
  ParcelStatusWiseCount? parcelStatusWiseCount;
  ProfitInfo? profitInfo;
  CashCollectionInfo? cashCollectionInfo;
  PayableToMerchant? payableToMerchant;

  Data({this.merchant, this.parcelStatusWiseCount, this.profitInfo, this.cashCollectionInfo, this.payableToMerchant});

  Data.fromJson(Map<String, dynamic> json) {
    merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    parcelStatusWiseCount = json['parcelStatusWiseCount'] != null ? ParcelStatusWiseCount.fromJson(json['parcelStatusWiseCount']) : null;
    profitInfo = json['profitInfo'] != null ? ProfitInfo.fromJson(json['profitInfo']) : null;
    cashCollectionInfo = json['cashCollectionInfo'] != null ? CashCollectionInfo.fromJson(json['cashCollectionInfo']) : null;
    payableToMerchant = json['payableToMerchant'] != null ? PayableToMerchant.fromJson(json['payableToMerchant']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (merchant != null) {
      data['merchant'] = merchant!.toJson();
    }
    if (parcelStatusWiseCount != null) {
      data['parcelStatusWiseCount'] = parcelStatusWiseCount!.toJson();
    }
    if (profitInfo != null) {
      data['profitInfo'] = profitInfo!.toJson();
    }
    if (cashCollectionInfo != null) {
      data['cashCollectionInfo'] = cashCollectionInfo!.toJson();
    }
    if (payableToMerchant != null) {
      data['payableToMerchant'] = payableToMerchant!.toJson();
    }
    return data;
  }
}

class Merchant {
  int? id;
  int? userId;
  String? businessName;
  String? merchantUniqueId;
  String? currentBalance;
  String? openingBalance;
  String? vat;
  CodCharges? codCharges;
  int? status;
  String? address;
  String? paymentPeriod;
  String? returnCharges;
  String? referenceName;
  String? referencePhone;
  String? createdAt;
  String? updatedAt;

  Merchant({this.id, this.userId, this.businessName, this.merchantUniqueId, this.currentBalance, this.openingBalance, this.vat, this.codCharges,this.status, this.address, this.paymentPeriod, this.returnCharges, this.referenceName, this.referencePhone, this.createdAt, this.updatedAt});

  Merchant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    businessName = json['business_name'];
    merchantUniqueId = json['merchant_unique_id'];
    currentBalance = json['current_balance'];
    openingBalance = json['opening_balance'];
    vat = json['vat'];
    codCharges = json['cod_charges'] != null ? CodCharges.fromJson(json['cod_charges']) : null;
    status = json['status'];
    address = json['address'];
    paymentPeriod = json['payment_period'];
    returnCharges = json['return_charges'];
    referenceName = json['reference_name'];
    referencePhone = json['reference_phone'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['business_name'] = businessName;
    data['merchant_unique_id'] = merchantUniqueId;
    data['current_balance'] = currentBalance;
    data['opening_balance'] = openingBalance;
    data['vat'] = vat;
    if (codCharges != null) {
      data['cod_charges'] = codCharges!.toJson();
    }
    data['status'] = status;
    data['address'] = address;
    data['payment_period'] = paymentPeriod;
    data['return_charges'] = returnCharges;
    data['reference_name'] = referenceName;
    data['reference_phone'] = referencePhone;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class CodCharges {
  String? insideCity;
  String? subCity;
  String? outsideCity;

  CodCharges({this.insideCity, this.subCity, this.outsideCity});

  CodCharges.fromJson(Map<String, dynamic> json) {
    insideCity = json['inside_city'];
    subCity = json['sub_city'];
    outsideCity = json['outside_city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['inside_city'] = insideCity;
    data['sub_city'] = subCity;
    data['outside_city'] = outsideCity;
    return data;
  }
}

class ParcelStatusWiseCount {
  int? delivered;
  int? returnReceivedByMerchant;
  int? partialDelivered;
  int? returnAssignToMerchant;
  int? returnToCourier;

  ParcelStatusWiseCount({this.delivered, this.returnReceivedByMerchant, this.partialDelivered, this.returnAssignToMerchant, this.returnToCourier});

  ParcelStatusWiseCount.fromJson(Map<String, dynamic> json) {
    delivered = json['Delivered'];
    returnReceivedByMerchant = json['Return received by merchant'];
    partialDelivered = json['Partial Delivered'];
    returnAssignToMerchant = json['Return assign to merchant'];
    returnToCourier = json['Return to Courier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Delivered'] = delivered;
    data['Return received by merchant'] = returnReceivedByMerchant;
    data['Partial Delivered'] = partialDelivered;
    data['Return assign to merchant'] = returnAssignToMerchant;
    data['Return to Courier'] = returnToCourier;
    return data;
  }
}

class ProfitInfo {
  double? totalDeliveryCharge;
  String? totalProfit;

  ProfitInfo({this.totalDeliveryCharge, this.totalProfit});

  ProfitInfo.fromJson(Map<String, dynamic> json) {
    totalDeliveryCharge = json['total_delivery_charge'];
    totalProfit = json['total_profit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_delivery_charge'] = totalDeliveryCharge;
    data['total_profit'] = totalProfit;
    return data;
  }
}

class CashCollectionInfo {
  int? totalCashCollection;
  int? totalSellingPrice;

  CashCollectionInfo({this.totalCashCollection, this.totalSellingPrice});

  CashCollectionInfo.fromJson(Map<String, dynamic> json) {
    totalCashCollection = json['totalCashCollection'];
    totalSellingPrice = json['totalSellingPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalCashCollection'] = totalCashCollection;
    data['totalSellingPrice'] = totalSellingPrice;
    return data;
  }
}

class PayableToMerchant {
  double? totalPayableMerchant;
  int? totalPaidByMerchant;

  PayableToMerchant({this.totalPayableMerchant, this.totalPaidByMerchant});

  PayableToMerchant.fromJson(Map<String, dynamic> json) {
    totalPayableMerchant = json['total_payable_merchant'];
    totalPaidByMerchant = json['total_paid_by_merchant'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_payable_merchant'] = totalPayableMerchant;
    data['total_paid_by_merchant'] = totalPaidByMerchant;
    return data;
  }
}