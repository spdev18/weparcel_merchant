class ParcelStatusModel {
  int? id;
  String? status;

  ParcelStatusModel({this.id, this.status});

  ParcelStatusModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    return data;
  }
}