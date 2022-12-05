class TasksModel {
  String taskId;
  String title;
  String thumbnail;
  String shortDesc;
  String payout;
  String ctaShort;
  String ctaLong;
  String type;
  String totalLead;
  bool isTrending;
  String earned;
  String status;
  String isCompleted;
  Brand brand;
  int payoutAmt;
  String payoutCurrency;
  String ctaAction;
  CustomData customData;

  TasksModel(
      {this.taskId,
      this.title,
      this.thumbnail,
      this.shortDesc,
      this.payout,
      this.ctaShort,
      this.ctaLong,
      this.type,
      this.totalLead,
      this.isTrending,
      this.earned,
      this.status,
      this.isCompleted,
      this.brand,
      this.payoutAmt,
      this.payoutCurrency,
      this.ctaAction,
      this.customData});

  TasksModel.fromJson(Map<String, dynamic> json) {
    taskId = json['taskId'];
    title = json['title'];
    thumbnail = json['thumbnail'];
    shortDesc = json['shortDesc'];
    payout = json['payout'];
    ctaShort = json['ctaShort'];
    ctaLong = json['ctaLong'];
    type = json['type'];
    totalLead = json['total_lead'];
    isTrending = json['isTrending'];
    earned = json['earned'];
    status = json['status'];
    isCompleted = json['isCompleted'];
    brand = json['brand'] != null ? new Brand.fromJson(json['brand']) : null;
    payoutAmt = json['payout_amt'];
    payoutCurrency = json['payout_currency'];
    ctaAction = json['ctaAction'];
    customData = json['custom_data'] != null ? CustomData.fromJson(json['custom_data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taskId'] = taskId;
    data['title'] = title;
    data['thumbnail'] = thumbnail;
    data['shortDesc'] = shortDesc;
    data['payout'] = payout;
    data['ctaShort'] = ctaShort;
    data['ctaLong'] = ctaLong;
    data['type'] = type;
    data['total_lead'] = totalLead;
    data['isTrending'] = isTrending;
    data['earned'] = earned;
    data['status'] = status;
    data['isCompleted'] = isCompleted;
    if (brand != null) {
      data['brand'] = brand.toJson();
    }
    data['payout_amt'] = payoutAmt;
    data['payout_currency'] = payoutCurrency;
    data['ctaAction'] = ctaAction;
    if (customData != null) {
      data['custom_data'] = customData.toJson();
    }
    return data;
  }
}

class Brand {
  String brandId;
  String title;
  String logo;

  Brand({this.brandId, this.title, this.logo});

  Brand.fromJson(Map<String, dynamic> json) {
    brandId = json['brandId'];
    title = json['title'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandId'] = brandId;
    data['title'] = title;
    data['logo'] = logo;
    return data;
  }
}

class CustomData {
  String appRating;
  String wallUrl;
  String dominantColor;

  CustomData({this.appRating, this.wallUrl, this.dominantColor});

  CustomData.fromJson(Map<String, dynamic> json) {
    appRating = json['app_rating'];
    wallUrl = json['wall_url'];
    dominantColor = json['dominant_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['app_rating'] = appRating;
    data['wall_url'] = wallUrl;
    data['dominant_color'] = dominantColor;
    return data;
  }
}
