class CancelBooking {
  final String? message;
  final Order? order;

  CancelBooking({
    this.message,
    this.order,
  });

  CancelBooking.fromJson(Map<String, dynamic> json)
    : message = json['message'] as String?,
      order = (json['order'] as Map<String,dynamic>?) != null ? Order.fromJson(json['order'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'message' : message,
    'order' : order?.toJson()
  };
}

class Order {
  final String? id;
  final String? userid;
  final String? driverid;
  final String? ambulanceid;
  final String? orderStatus;
  final Destination? destination;
  final Source? source;
  final String? orderType;
  final String? orderDate;
  final dynamic completedDate;
  final int? orderAmount;
  final int? orderDistance;
  final String? paymentMethod;
  final dynamic cencelationReason;
  final int? cashOtp;
  final int? v;

  Order({
    this.id,
    this.userid,
    this.driverid,
    this.ambulanceid,
    this.orderStatus,
    this.destination,
    this.source,
    this.orderType,
    this.orderDate,
    this.completedDate,
    this.orderAmount,
    this.orderDistance,
    this.paymentMethod,
    this.cencelationReason,
    this.cashOtp,
    this.v,
  });

  Order.fromJson(Map<String, dynamic> json)
    : id = json['_id'] as String?,
      userid = json['userid'] as String?,
      driverid = json['driverid'] as String?,
      ambulanceid = json['ambulanceid'] as String?,
      orderStatus = json['order_status'] as String?,
      destination = (json['destination'] as Map<String,dynamic>?) != null ? Destination.fromJson(json['destination'] as Map<String,dynamic>) : null,
      source = (json['source'] as Map<String,dynamic>?) != null ? Source.fromJson(json['source'] as Map<String,dynamic>) : null,
      orderType = json['order_type'] as String?,
      orderDate = json['order_date'] as String?,
      completedDate = json['completed_date'],
      orderAmount = json['order_amount'] as int?,
      orderDistance = json['order_distance'] as int?,
      paymentMethod = json['payment_method'] as String?,
      cencelationReason = json['cencelation_reason'],
      cashOtp = json['cash_otp'] as int?,
      v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'userid' : userid,
    'driverid' : driverid,
    'ambulanceid' : ambulanceid,
    'order_status' : orderStatus,
    'destination' : destination?.toJson(),
    'source' : source?.toJson(),
    'order_type' : orderType,
    'order_date' : orderDate,
    'completed_date' : completedDate,
    'order_amount' : orderAmount,
    'order_distance' : orderDistance,
    'payment_method' : paymentMethod,
    'cencelation_reason' : cencelationReason,
    'cash_otp' : cashOtp,
    '__v' : v
  };
}

class Destination {
  final double? lat;
  final double? lng;
  final String? id;

  Destination({
    this.lat,
    this.lng,
    this.id,
  });

  Destination.fromJson(Map<String, dynamic> json)
    : lat = json['lat'] as double?,
      lng = json['lng'] as double?,
      id = json['_id'] as String?;

  Map<String, dynamic> toJson() => {
    'lat' : lat,
    'lng' : lng,
    '_id' : id
  };
}

class Source {
  final double? lat;
  final double? lng;
  final String? id;

  Source({
    this.lat,
    this.lng,
    this.id,
  });

  Source.fromJson(Map<String, dynamic> json)
    : lat = json['lat'] as double?,
      lng = json['lng'] as double?,
      id = json['_id'] as String?;

  Map<String, dynamic> toJson() => {
    'lat' : lat,
    'lng' : lng,
    '_id' : id
  };
}