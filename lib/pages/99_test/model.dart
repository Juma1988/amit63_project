class ProductsModel {
  late final String title, description, code, image, createdAt;
  late final double priceBefore, priceAfter, discount, amount;
  late final int id, categoryId;
  late final bool isActive, isFavorite;

  ProductsModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'] ?? 0;
    id = json['id'] ?? 0;
    title = json['title'] ?? '';
    description = json['description'] ?? '';
    code = json['code'] ?? '';
    priceBefore = json['price_before_discount'] ?? 0.0;
    priceAfter = json['price'] ?? '';
    discount = json['discount'] ?? 0.0;
    amount = json['amount'] ?? 0.0;
    isActive = json['is_active']==1;
    isFavorite = json['is_favorite'] ?? false;
    image = json['main_image'] ?? '';
    createdAt = json['created_at'] ?? '';
  }
}

class ProductUnit {
  late final String name, type, createdAt, updatedAt;
  late final int id;

  ProductUnit.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? '';
    type = json['type'] ?? '';
    createdAt = json['created_at'] ?? '';
    updatedAt = json['updated_at'] ?? '';
  }
}

class OtherImages {
  late final String name, url;

  OtherImages.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    url = json['url'] ?? '';
  }
}
