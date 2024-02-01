class Activity {
  // Defines the data structure that the API responds should model
  final String activity;
  final String type;
  final int participants;
  final double price;  // Change Float to double
  final String link;
  final String key;
  final double accessibility;  // Change Float to double

  Activity({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      activity: json['activity'] ?? '',
      type: json['type'] ?? '',
      participants: json['participants'] ?? 0,
      price: (json['price'] ?? 0).toDouble(),  // Convert to double
      link: json['link'] ?? '',
      key: json['key'] ?? '',
      accessibility: (json['accessibility'] ?? 0).toDouble(),  // Convert to double
    );
  }
}
