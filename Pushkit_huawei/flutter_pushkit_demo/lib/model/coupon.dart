class Coupon {
  String title;
  String body;
  String couponCode;

  Coupon({this.title, this.body, this.couponCode});

  Coupon.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
    couponCode = json['couponCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['body'] = this.body;
    data['couponCode'] = this.couponCode;
    return data;
  }

  @override
  String toString() {
    return 'Coupon{title: $title, body: $body, couponCode: $couponCode}';
  }
}