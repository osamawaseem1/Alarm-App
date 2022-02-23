class AlarmInfo {
  int id;
  String title;
  String body;
  DateTime alarmDateTime;
  bool isPending;
  int gradientColorIndex;

  AlarmInfo(
      {this.id,
      this.title,
      this.body,
      this.alarmDateTime,
      this.isPending,
      this.gradientColorIndex});

  factory AlarmInfo.fromMap(Map<String, dynamic> json) => AlarmInfo(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        alarmDateTime: DateTime.parse(json["alarmDateTime"]),
        isPending: json["isPending"],
        gradientColorIndex: json["gradientColorIndex"],
      );
  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "body": body,
        "alarmDateTime": alarmDateTime.toIso8601String(),
        "isPending": isPending,
        "gradientColorIndex": gradientColorIndex,
      };
}
