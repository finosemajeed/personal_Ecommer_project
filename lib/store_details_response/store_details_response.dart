import 'package:json_annotation/json_annotation.dart';

import 'rating.dart';

part 'store_details_response.g.dart';

@JsonSerializable()
class StoreDetailsResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'price')
  double? price;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'category')
  String? category;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'rating')
  Rating? rating;

  StoreDetailsResponse({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory StoreDetailsResponse.fromJson(Map<String, dynamic> json) {
    return _$StoreDetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StoreDetailsResponseToJson(this);
}
