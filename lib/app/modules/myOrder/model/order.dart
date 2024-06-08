import 'dart:convert';

MyOrderResponse myOrderResponseFromJson(String str) => MyOrderResponse.fromJson(json.decode(str));

String myOrderResponseToJson(MyOrderResponse data) => json.encode(data.toJson());

class MyOrderResponse {
  List<Order>? processing;
  List<Order>? delivered;
  List<Order>? canceled;

  MyOrderResponse({
    this.processing,
    this.delivered,
    this.canceled,
  });

  factory MyOrderResponse.fromJson(Map<String, dynamic> json) => MyOrderResponse(
    processing: json["Processing"] == null ? [] : List<Order>.from(json["Processing"]!.map((x) => Order.fromJson(x))),
    delivered: json["Delivered"] == null ? [] : List<Order>.from(json["Delivered"]!.map((x) => Order.fromJson(x))),
    canceled: json["Canceled"] == null ? [] : List<Order>.from(json["Canceled"]!.map((x) => Order.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Processing": processing == null ? [] : List<dynamic>.from(processing!.map((x) => x.toJson())),
    "Delivered": delivered == null ? [] : List<dynamic>.from(delivered!.map((x) => x.toJson())),
    "Canceled": canceled == null ? [] : List<dynamic>.from(canceled!.map((x) => x.toJson())),
  };
}

class Order {
  String? id;
  DateTime? date;
  String? status;
  int? amount;
  String? deliveryType;

  Order({
    this.id,
    this.date,
    this.status,
    this.amount,
    this.deliveryType,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["id"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    status: json["status"],
    amount: json["amount"],
    deliveryType: json["deliveryType"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": date?.toIso8601String(),
    "status": status,
    "amount": amount,
    "deliveryType": deliveryType,
  };
}
