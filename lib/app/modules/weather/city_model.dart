class City {
  String? title;
  String? locationType;
  int? woeid;
  String? lattLong;

  City({this.title, this.locationType, this.woeid, this.lattLong});

  City.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    locationType = json['location_type'];
    woeid = json['woeid'];
    lattLong = json['latt_long'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['location_type'] = locationType;
    data['woeid'] = woeid;
    data['latt_long'] = lattLong;
    return data;
  }
}
