class Course {
  final String title;
  final String imageURL;
  final String shortDescription;
  final String description;
  final double price;
  final String duration;
  final String category;

  Course( {
    required this.title,
    required this.imageURL,
    required this.shortDescription,
    required this.description,
    required this.price,
    required this.category,
    required this.duration,
  });
}
