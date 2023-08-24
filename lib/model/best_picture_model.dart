class BestPictureModel {
  List<Best>? best;

  BestPictureModel({this.best});

  BestPictureModel.fromJson(Map<String, dynamic> json) {
    if (json['best'] != null) {
      best = <Best>[];
      json['best'].forEach((v) {
        best!.add(new Best.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.best != null) {
      data['best'] = this.best!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Best {
  String? image;
  String? title;
  String? location;
  String? date;

  Best({this.image, this.title, this.location, this.date});

  Best.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    location = json['location'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['location'] = this.location;
    data['date'] = this.date;
    return data;
  }
}
