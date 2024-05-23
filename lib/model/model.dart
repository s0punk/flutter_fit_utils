/// Template class for encapsulating data.
class Model {
  /// Identifier for the id.
  static const String idKey = "id";

  /// Identifier for the user id.
  static const String userIdKey = "user_id";

  /// Identifier for the data.
  static const String dataKey = "data";

  /// Id of the model. Should be unique.
  final String id;

  /// Optionnal: Id of the user who's owner of the data.
  /// The id should be unique to each user.
  final String? userId;

  /// Data encapsulated by the model.
  final Map<String, dynamic> data;

  /// Creates a new model.
  const Model({required this.id, this.userId, this.data = const {}});

  /// Creates an instance from json.
  Model.fromJson(Map<String, dynamic> json)
      : id = json[idKey],
        userId = json[userIdKey],
        data = json[dataKey];

  /// Converts an instance to json.
  Map<String, dynamic> toJson() => {
        idKey: id,
        userIdKey: userId ?? "",
        dataKey: data,
      };

  @override
  String toString() => toJson().toString();

  /// Copies an instance with the possibility of overriding certain fields.
  Model copyWith({String? id, String? userId, Map<String, dynamic>? data}) =>
      Model(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        data: data ?? this.data,
      );
}
