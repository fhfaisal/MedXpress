class ProductDetails {
  final String id;
  final String name;
  final String description;
  final String manufacturer;
  final String genericName;
  final double price;
  final double oldPrice;
  final String dosageForm;
  final String treatmentInfo;
  final List<String> images;
  final List<Review> reviews;
  final double rating;
  final int ratingsCount;
  final int reviewsCount;

  ProductDetails({
    required this.id,
    required this.name,
    required this.description,
    required this.manufacturer,
    required this.genericName,
    required this.price,
    required this.oldPrice,
    required this.dosageForm,
    required this.treatmentInfo,
    required this.images,
    required this.reviews,
    required this.rating,
    required this.ratingsCount,
    required this.reviewsCount,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    var reviewList = json['reviews'] as List;
    List<Review> reviewItems = reviewList.map((i) => Review.fromJson(i)).toList();

    var imageList = json['images'] as List;
    List<String> imageItems = List<String>.from(imageList);

    return ProductDetails(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      manufacturer: json['manufacturer'],
      genericName: json['genericName'],
      price: json['price'],
      oldPrice: json['oldPrice'],
      dosageForm: json['dosageForm'],
      treatmentInfo: json['treatmentInfo'],
      images: imageItems,
      reviews: reviewItems,
      rating: json['rating'],
      ratingsCount: json['ratingsCount'],
      reviewsCount: json['reviewsCount'],
    );
  }
}

class Review {
  final String author;
  final String date;
  final double rating;
  final String comment;

  Review({
    required this.author,
    required this.date,
    required this.rating,
    required this.comment,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      author: json['author'],
      date: json['date'],
      rating: json['rating'],
      comment: json['comment'],
    );
  }
}