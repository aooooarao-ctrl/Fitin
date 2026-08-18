class RecipeDetail {
  final String id;
  final String name;
  final String description;
  final double calories;
  final double protein;
  final double carbs;
  final double fat;
  final List<String> tags;
  
  RecipeDetail({required this.id, required this.name, required this.description, required this.calories, required this.protein, required this.carbs, required this.fat, required this.tags});
  
  factory RecipeDetail.fromJson(Map<String, dynamic> json) {
    return RecipeDetail(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      calories: (json['calories'] ?? 0).toDouble(),
      protein: (json['protein'] ?? 0).toDouble(),
      carbs: (json['carbs'] ?? 0).toDouble(),
      fat: (json['fat'] ?? 0).toDouble(),
      tags: List<String>.from(json['tags'] ?? []),
    );
  }
}
