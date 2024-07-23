abstract class BaseModel<T> {
  /// Creates an instance of the model from a JSON map.
  T fromJson(Map<String, dynamic> json);

  /// Converts the current instance to a JSON map.
  Map<String, dynamic> toJson();

}