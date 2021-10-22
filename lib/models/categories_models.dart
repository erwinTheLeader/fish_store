class Categories {
  final String title;
  final String categoryImageUrl;
  final int catId;

  Categories(
    this.categoryImageUrl, {
    required this.catId,
    required this.title,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      '',
      catId: json['id'],
      title: json['nom'],
    );
  }
}
