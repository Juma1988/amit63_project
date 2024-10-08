class ProductData {
  late final List<Data> data;

  ProductData.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }
}

class Data {
  late final int categoryId;
  late final int id;
  late final String title;
  late final String description;
  late final String code;
  late final int priceBeforeDiscount;
  late final int? price;
  late final double discount;
  late final int? amount;
  late final int isActive;
  late final bool isFavorite;
  late final Unit unit;
  late final List<Images> images;
  late final String mainImage;
  late final String createdAt;

  Data.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'] ?? 0;
    id = json['id'] ?? 0;
    title = json['title'] ?? '';
    description = json['description'] ?? '';
    code = json['code'] ?? '';
    priceBeforeDiscount = json['price_before_discount'] ?? 0.0;
    price = json['price'] ?? 0.0;
    discount = json['discount'] ?? 0.0;
    amount = json['amount'] ?? 0.0;
    isActive = json['is_active'] = 1;
    isFavorite = json['is_favorite'] ?? false;
    unit = Unit.fromJson(json['unit'] ?? []);
    images =
        List.from(json['images'] ?? []).map((e) => Images.fromJson(e)).toList();
    mainImage = json['main_image'] ?? '';
    createdAt = json['created_at'] ?? '';
  }
}

class Unit {
  late final int id;
  late final String name;
  late final String type;
  late final String createdAt;
  late final String updatedAt;

  Unit.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? '';
    type = json['type'] ?? '';
    createdAt = json['created_at'] ?? '';
    updatedAt = json['updated_at'] ?? '';
  }
}

class Images {
  late final String name;
  late final String url;

  Images.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    url = json['url'] ?? '';
  }
}
