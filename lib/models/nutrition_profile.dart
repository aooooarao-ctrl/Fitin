class NutritionProfile {
  final String userId;
  final int dailyCalorieTarget;
  final String dietType;
  final List<String> allergies;
  
  NutritionProfile({required this.userId, required this.dailyCalorieTarget, required this.dietType, required this.allergies});
  
  factory NutritionProfile.fromJson(Map<String, dynamic> json) {
    return NutritionProfile(
      userId: json['user_id'] ?? '',
      dailyCalorieTarget: json['daily_calorie_target'] ?? 2000,
      dietType: json['diet_type'] ?? 'balanced',
      allergies: List<String>.from(json['allergies'] ?? []),
    );
  }
}
