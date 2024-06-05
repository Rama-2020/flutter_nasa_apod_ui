class APOD {
  final String title;
  final String explanation;
  final String url;

  APOD({required this.title, required this.explanation, required this.url});

  factory APOD.fromJson(Map<String, dynamic> json) {
    return APOD(
      title: json['title'],
      explanation: json['explanation'],
      url: json['url'],
    );
  }
}
